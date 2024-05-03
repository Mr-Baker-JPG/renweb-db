import { type Family } from '@prisma/client'
import { components } from '../types/facts'
import { prisma } from '../utils/db'
import { loadData, processEntities } from './api'

type FamilyVM = components['schemas']['FamilyConfigVmOut']

async function upsertFamily(families: FamilyVM[]) {
	return await prisma.$transaction(async tx => {
		const results = await Promise.all(
			families.map(entity =>
				tx.family.upsert({
					where: { familyID: entity.familyID },
					update: {
						enableWeb: entity.enableWeb,
						familyName: entity.familyName,
						familyNameBP: entity.familyNameBP,
						modifiedBy: entity.modifiedBy,
						modifiedDate: entity.modifiedDate,
						note: entity.note,
						parentsWebFinancialBlock: entity.parentsWebFinancialBlock,
						unlisted: Boolean(entity.unlisted),
					},
					create: {
						familyID: entity.familyID,
						enableWeb: entity.enableWeb,
						familyName: entity.familyName,
						familyNameBP: entity.familyNameBP,
						modifiedBy: entity.modifiedBy,
						modifiedDate: entity.modifiedDate,
						note: entity.note,
						parentsWebFinancialBlock: entity.parentsWebFinancialBlock,
						unlisted: Boolean(entity.unlisted),
					},
				}),
			),
		)
		return results
	})
}

export const load = async () => {
	console.log('Loading Family')
	await loadData<FamilyVM, Family>(
		'/families',
		await processEntities(upsertFamily),
	)
	console.log('---')
}
