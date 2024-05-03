import { type SchoolConfig } from '@prisma/client'
import { components } from '../../types/facts'
import { prisma } from '../../utils/db'
import { loadData, processEntities } from '../api'

type SchoolConfigVM = components['schemas']['SchoolConfigVmOut']

async function upsertSchoolConfig(schools: SchoolConfigVM[]) {
	return await prisma.$transaction(async tx => {
		const results = await Promise.all(
			schools.map(entity =>
				tx.schoolConfig.upsert({
					where: { configSchoolID: entity.configSchoolID },
					update: {
						fax: entity.fax,
						phone: entity.phone,
						active: entity.active,
						address: entity.address,
						city: entity.city,
						defaultTermId: entity.defaultTermId,
						defaultYearId: entity.defaultYearId,
						districtName: entity.districtName,
						email: entity.email,
						modifiedBy: entity.modifiedBy,
						modifiedDate: entity.modifiedDate,
						nextYearId: entity.nextYearId,
						parentAlert: entity.parentAlert,
						pwTermID: entity.pwTermID,
						pwTermID2: entity.pwTermID2,
						pwYearID: entity.pwYearID,
						schoolCode: entity.schoolCode,
						schoolLMS: entity.schoolLMS,
						schoolName: entity.schoolName,
						state: entity.state,
						zip: entity.zip,
					},
					create: {
						configSchoolID: entity.configSchoolID,
						fax: entity.fax,
						phone: entity.phone,
						active: entity.active,
						address: entity.address,
						city: entity.city,
						defaultTermId: entity.defaultTermId,
						defaultYearId: entity.defaultYearId,
						districtName: entity.districtName,
						email: entity.email,
						modifiedBy: entity.modifiedBy,
						modifiedDate: entity.modifiedDate,
						nextYearId: entity.nextYearId,
						parentAlert: entity.parentAlert,
						pwTermID: entity.pwTermID,
						pwTermID2: entity.pwTermID2,
						pwYearID: entity.pwYearID,
						schoolCode: entity.schoolCode,
						schoolLMS: entity.schoolLMS,
						schoolName: entity.schoolName,
						state: entity.state,
						zip: entity.zip,
					},
				}),
			),
		)
		return results
	})
}

export const load = async () => {
	console.log('Loading SchoolConfig')
	await loadData<SchoolConfigVM, SchoolConfig>(
		'/SchoolConfigurations',
		await processEntities(upsertSchoolConfig),
	)
	console.log('---')
}
