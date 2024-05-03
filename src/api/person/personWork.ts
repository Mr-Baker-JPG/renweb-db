import { type PersonWorkEntity } from '@prisma/client'
import { components } from '../../types/facts'
import { prisma } from '../../utils/db'
import { loadData, processEntities } from '../api'

type PersonWorkEntityVM = components['schemas']['PersonWorkEntity']

async function upsertPersonWorkEntity(pws: PersonWorkEntityVM[]) {
	return await prisma.$transaction(async tx => {
		const results = await Promise.all(
			pws.map(entity =>
				tx.personWorkEntity.upsert({
					where: { personId: entity.personId },
					update: {
						company: entity.company,
						id: entity.id,
						jobCategory: entity.jobCategory,
						matchingGiftEmployer: entity.matchingGiftEmployer,
						occupation: entity.occupation,
						workCity: entity.workCity,
						workFax: entity.workFax,
						workPhone: entity.workPhone,
						workPhoneExtension: entity.workPhoneExtension,
						workState: entity.workState,
						workStreet: entity.workStreet,
						workZip: entity.workZip,
					},
					create: {
						Person: {
							connect: {
								personId: entity.personId,
							},
						},
						company: entity.company,
						id: entity.id || '',
						jobCategory: entity.jobCategory,
						matchingGiftEmployer: entity.matchingGiftEmployer,
						occupation: entity.occupation,
						workCity: entity.workCity,
						workFax: entity.workFax,
						workPhone: entity.workPhone,
						workPhoneExtension: entity.workPhoneExtension,
						workState: entity.workState,
						workStreet: entity.workStreet,
						workZip: entity.workZip,
					},
				}),
			),
		)
		return results
	})
}

export const load = async () => {
	console.log('Loading PersonWorkEntity')
	await loadData<PersonWorkEntityVM, PersonWorkEntity>(
		'/people/Work',
		await processEntities(upsertPersonWorkEntity),
	)
	console.log('---')
}
