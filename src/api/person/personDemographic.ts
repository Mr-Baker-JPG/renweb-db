import { type PersonDemographic } from '@prisma/client'
import { components } from '../../types/facts'
import { prisma } from '../../utils/db'
import { loadData, processEntities } from '../api'

type PersonDemographicVM = components['schemas']['PersonDemographicVM']

async function upsertPersonDemographic(pds: PersonDemographicVM[]) {
	return await prisma.$transaction(async tx => {
		const results = await Promise.all(
			pds.map(entity =>
				tx.personDemographic.upsert({
					where: { personId: entity.personId },
					update: {
						birthCity: entity.birthCity,
						birthCountry: entity.birthCountry,
						birthdate: entity.birthdate,
						birthplace: entity.birthplace,
						birthState: entity.birthState,
						citizenship: entity.citizenship,
						ethnicity: entity.ethnicity,
						gender: entity.gender,
						maritalStatus: entity.maritalStatus,
						primaryLanguage: entity.primaryLanguage,
					},
					create: {
						birthCity: entity.birthCity,
						birthCountry: entity.birthCountry,
						birthdate: entity.birthdate,
						birthplace: entity.birthplace,
						birthState: entity.birthState,
						citizenship: entity.citizenship,
						ethnicity: entity.ethnicity,
						gender: entity.gender,
						maritalStatus: entity.maritalStatus,
						primaryLanguage: entity.primaryLanguage,
						Person: {
							connect: {
								personId: entity.personId,
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
	console.log('Loading PersonDemographic')
	await loadData<PersonDemographicVM, PersonDemographic>(
		'/people/Demographic',
		await processEntities(upsertPersonDemographic),
	)
	console.log('---')
}
