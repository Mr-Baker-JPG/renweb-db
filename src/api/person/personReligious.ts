import { type PersonReligionEntity } from '@prisma/client'
import { components } from '../../types/facts'
import { prisma } from '../../utils/db'
import { loadData, processEntities } from '../api'
import { v4 as uuidv4 } from 'uuid'

type PersonReligionEntityVM = components['schemas']['PersonReligionEntity']

async function upsertPersonReligionEntity(prs: PersonReligionEntityVM[]) {
	return await prisma.$transaction(async tx => {
		const results = await Promise.all(
			prs.map(entity =>
				tx.personReligionEntity.upsert({
					where: { personId: entity.personId },
					update: {
						denomination: entity.denomination,
						confirmationCity: entity.confirmationCity,
						confirmationCongregation: entity.confirmationCongregation,
						confirmationDate: entity.confirmationDate,
						confirmationState: entity.confirmationState,
						congregationId: entity.congregationId,
						communionCity: entity.communionCity,
						communionCongregation: entity.communionCongregation,
						communionDate: entity.communionDate,
						communionState: entity.communionState,
						baptismCongregation: entity.baptismCongregation,
						baptismCity: entity.baptismCity,
						baptismDate: entity.baptismDate,
						baptismState: entity.baptismState,
						barMitzvahCity: entity.barMitzvahCity,
						barMitzvahCongregation: entity.barMitzvahCongregation,
						barMitzvahDate: entity.barMitzvahDate,
						barMitzvahState: entity.barMitzvahState,
						localChurchMember: entity.localChurchMember,
						reconciliationCity: entity.reconciliationCity,
						reconciliationCongregation: entity.reconciliationCongregation,
						reconciliationDate: entity.reconciliationDate,
						reconciliationState: entity.reconciliationState,
					},
					create: {
						denomination: entity.denomination,
						confirmationCity: entity.confirmationCity,
						confirmationCongregation: entity.confirmationCongregation,
						confirmationDate: entity.confirmationDate,
						confirmationState: entity.confirmationState,
						congregationId: entity.congregationId,
						communionCity: entity.communionCity,
						communionCongregation: entity.communionCongregation,
						communionDate: entity.communionDate,
						communionState: entity.communionState,
						baptismCongregation: entity.baptismCongregation,
						baptismCity: entity.baptismCity,
						baptismDate: entity.baptismDate,
						baptismState: entity.baptismState,
						barMitzvahCity: entity.barMitzvahCity,
						barMitzvahCongregation: entity.barMitzvahCongregation,
						barMitzvahDate: entity.barMitzvahDate,
						barMitzvahState: entity.barMitzvahState,
						localChurchMember: entity.localChurchMember,
						reconciliationCity: entity.reconciliationCity,
						reconciliationCongregation: entity.reconciliationCongregation,
						reconciliationDate: entity.reconciliationDate,
						reconciliationState: entity.reconciliationState,
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
	console.log('Loading PersonReligionEntity')
	await loadData<PersonReligionEntityVM, PersonReligionEntity>(
		'/people/Religion',
		await processEntities(upsertPersonReligionEntity),
	)
	console.log('---')
}
