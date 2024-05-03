import { type SchoolYearModel } from '@prisma/client'
import { components } from '../../types/facts'
import { prisma } from '../../utils/db'
import { loadData, processEntities } from '../api'

type SchoolYearModelVM = components['schemas']['SchoolYearModel']

async function upsertSchoolYearModel(schoolYears: SchoolYearModelVM[]) {
	return await prisma.$transaction(async tx => {
		const results = await Promise.all(
			schoolYears.map(entity =>
				tx.schoolYearModel.upsert({
					where: { yearId: entity.yearId },
					update: {
						yearName: entity.yearName,
						allowInquiry: entity.allowInquiry,
						blockAcademicYear: entity.blockAcademicYear,
						firstDay: entity.firstDay,
						lastDay: entity.lastDay,
						schoolCode: entity.schoolCode,
					},
					create: {
						yearId: entity.yearId,
						yearName: entity.yearName,
						allowInquiry: entity.allowInquiry,
						blockAcademicYear: entity.blockAcademicYear,
						firstDay: entity.firstDay,
						lastDay: entity.lastDay,
						schoolCode: entity.schoolCode,
					},
				}),
			),
		)
		return results
	})
}

export const load = async () => {
	console.log('Loading SchoolYearModel')
	await loadData<SchoolYearModelVM, SchoolYearModel>(
		'/SchoolYears',
		await processEntities(upsertSchoolYearModel),
	)
	console.log('---')
}
