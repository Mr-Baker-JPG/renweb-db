import { type PersonVehicleEntity } from '@prisma/client'
import { components } from '../../types/facts'
import { prisma } from '../../utils/db'
import { loadData, processEntities } from '../api'
import { v4 as uuidv4 } from 'uuid'

type PersonVehicleEntityVM = components['schemas']['PersonVehicleEntity']

async function upsertPersonVehicleEntity(pvs: PersonVehicleEntityVM[]) {
	return await prisma.$transaction(async tx => {
		const results = await Promise.all(
			pvs.map(entity =>
				tx.personVehicleEntity.upsert({
					where: { personId: entity.personId },
					update: {
						autoLicense: entity.autoLicense,
						autoMake: entity.autoMake,
						autoModel: entity.autoModel,
						driversLicense: entity.driversLicense,
						permitNumber: entity.permitNumber,
					},
					create: {
						id: entity.id || uuidv4(),
						autoLicense: entity.autoLicense,
						autoMake: entity.autoMake,
						autoModel: entity.autoModel,
						driversLicense: entity.driversLicense,
						permitNumber: entity.permitNumber,
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
	console.log('Loading PersonVehicleEntity')
	await loadData<PersonVehicleEntityVM, PersonVehicleEntity>(
		'/people/Vehicles',
		await processEntities(upsertPersonVehicleEntity),
	)
	console.log('---')
}
