import { components } from '../types/facts'
import { prisma } from '../utils/db'
import { type Address } from '@prisma/client'
import { loadData, processEntities } from './api'

type AddressVM = components['schemas']['AddressVM']

async function upsertAddresses(addresses: AddressVM[]) {
	return await prisma.$transaction(async tx => {
		const results = await Promise.all(
			addresses.map(address =>
				tx.address.upsert({
					where: { addressID: address.addressID },
					update: {
						address1: address.address1,
						address2: address.address2,
						city: address.city,
						state: address.state,
						zip: address.zip,
						country: address.country,
						greeting1: address.greeting1,
						greeting2: address.greeting2,
						greeting3: address.greeting3,
						greeting4: address.greeting4,
						greeting5: address.greeting5,
						modifiedBy: address.modifiedBy,
						modifiedDate: address.modifiedDate,
					},
					create: {
						addressID: address.addressID,
						address1: address.address1,
						address2: address.address2,
						city: address.city,
						state: address.state,
						zip: address.zip,
						country: address.country,
						greeting1: address.greeting1,
						greeting2: address.greeting2,
						greeting3: address.greeting3,
						greeting4: address.greeting4,
						greeting5: address.greeting5,
						modifiedBy: address.modifiedBy,
						modifiedDate: address.modifiedDate,
					},
				}),
			),
		)
		return results
	})
}

export const load = async () => {
	console.log('Loading addresses')
	await loadData<AddressVM, Address>(
		'/people/Address',
		await processEntities(upsertAddresses),
	)
	console.log('---')
}
