import { type LockerModel } from '@prisma/client'
import { components } from '../types/facts'
import { prisma } from '../utils/db'
import { loadData, processEntities } from './api'

type LockerVM = components['schemas']['LockerModel']

async function upsertLockerModel(Lockers: LockerVM[]) {
	return await prisma.$transaction(async tx => {
		const results = await Promise.all(
			Lockers.map(entity =>
				tx.lockerModel.upsert({
					where: { lockerId: entity.lockerId },
					update: {
						locker: entity.locker,
						lockerGroupId: entity.lockerGroupId,
						schoolCode: entity.schoolCode,
						combination1: entity.combination1,
						combination2: entity.combination2,
						combination3: entity.combination3,
						combination4: entity.combination4,
						combination5: entity.combination5,
						note: entity.note,
						currentCombination: entity.currentCombination,
						outOfService: entity.outOfService,
						configSchoolId: entity.configSchoolId,
					},
					create: {
						lockerId: entity.lockerId,
						locker: entity.locker,
						lockerGroupId: entity.lockerGroupId,
						schoolCode: entity.schoolCode,
						combination1: entity.combination1,
						combination2: entity.combination2,
						combination3: entity.combination3,
						combination4: entity.combination4,
						combination5: entity.combination5,
						note: entity.note,
						currentCombination: entity.currentCombination,
						outOfService: entity.outOfService,
						configSchoolId: entity.configSchoolId,
					},
				}),
			),
		)
		return results
	})
}

export const load = async () => {
	console.log('Loading LockerModel')
	await loadData<LockerVM, LockerModel>(
		'/Students/LockerConfiguration',
		await processEntities(upsertLockerModel),
	)
	console.log('---')
}
