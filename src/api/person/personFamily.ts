import { type PersonFamily } from '@prisma/client'
import { components } from '../../types/facts'
import { prisma } from '../../utils/db'
import { loadData, processEntities } from '../api'
import { connect } from 'http2'

type PersonFamilyVM = components['schemas']['PersonFamilyVM']

async function upsertPersonFamily(pfs: PersonFamilyVM[]) {
	return await prisma.$transaction(async tx => {
		const results = await Promise.all(
			pfs.map(entity =>
				tx.personFamily.upsert({
					where: {
						personId_familyId: {
							personId: entity.personId,
							familyId: entity.familyId,
						},
					},
					update: {
						factsCustomer: entity.factsCustomer,
						familyId: entity.familyId,
						familyOrder: entity.familyOrder,
						financialResponsibility: entity.financialResponsibility,
						financialResponsibilityPercent:
							entity.financialResponsibilityPercent,
						student: entity.student,
						parent: entity.parent,
					},
					create: {
						factsCustomer: entity.factsCustomer,
						familyOrder: entity.familyOrder,
						financialResponsibility: entity.financialResponsibility,
						financialResponsibilityPercent:
							entity.financialResponsibilityPercent,
						student: entity.student,
						parent: entity.parent,
						Family: {
							connect: {
								familyID: entity.familyId,
							},
						},
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
	console.log('Loading PersonFamily')
	await loadData<PersonFamilyVM, PersonFamily>(
		'/people/PersonFamily',
		await processEntities(upsertPersonFamily),
	)
	console.log('---')
}
