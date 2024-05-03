import { type SchoolTerms } from '@prisma/client'
import { components } from '../../types/facts'
import { prisma } from '../../utils/db'
import { loadData, processEntities } from '../api'

type SchoolTermsVM = components['schemas']['SchoolTermsVmOutV2']

async function upsertSchoolTerms(terms: SchoolTermsVM[]) {
	return await prisma.$transaction(async tx => {
		const results = await Promise.all(
			terms.map(entity =>
				tx.schoolTerms.upsert({
					where: { uniqueTermID: entity.uniqueTermID },
					update: {
						name: entity.name,
						firstDay: entity.firstDay,
						lastDay: entity.lastDay,
						schoolCode: entity.schoolCode,
						semesterID: String(entity.semesterID),
						modifiedBy: entity.modifiedBy,
						modifiedDate: entity.modifiedDate,
						termID: entity.termID,
					},
					create: {
						uniqueTermID: entity.uniqueTermID,
						termID: entity.termID,
						name: entity.name,
						firstDay: entity.firstDay,
						lastDay: entity.lastDay,
						schoolCode: entity.schoolCode,
						semesterID: String(entity.semesterID),
						modifiedBy: entity.modifiedBy,
						modifiedDate: entity.modifiedDate,
						yearID: entity.yearID,
						SchoolYear: {
							connect: {
								yearId: entity.yearID,
							},
						},
					},
				}),
			),
		)
		return results
	})
}

export const load = async () => {
	console.log('Loading SchoolTerms')
	await loadData<SchoolTermsVM, SchoolTerms>(
		'/SchoolTerms/v2/schools/{schoolId}',
		await processEntities(upsertSchoolTerms),
		undefined,
		{ schoolId: 1 },
	)
	console.log('---')
}
