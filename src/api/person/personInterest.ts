import { type PersonInterest } from '@prisma/client'
import { components } from '../../types/facts'
import { prisma } from '../../utils/db'
import { loadData, processEntities } from '../api'

type PersonInterestVM = components['schemas']['PersonInterestVM']

async function upsertPersonInterest(pis: PersonInterestVM[]) {
	return await prisma.$transaction(async tx => {
		const results = await Promise.all(
			pis.map(entity =>
				tx.personInterest.upsert({
					where: { personID: entity.personID },
					update: {
						interest: entity.interest,
					},
					create: {
						Person: {
							connect: {
								personId: entity.personID,
							},
						},
						interest: entity.interest,
					},
				}),
			),
		)
		return results
	})
}

export const load = async () => {
	console.log('Loading PersonInterest')
	await loadData<PersonInterestVM, PersonInterest>(
		'/people/Interests',
		await processEntities(upsertPersonInterest),
	)
	console.log('---')
}
