import { Person } from '@prisma/client'
import { components } from '../../types/facts'
import { prisma } from '../../utils/db'
import { loadData, processEntities } from '../api'

type PersonVM = components['schemas']['PersonVM']

async function upsertPeople(people: PersonVM[]) {
	return await prisma.$transaction(async tx => {
		const results = await Promise.all(
			people.map(person =>
				tx.person.upsert({
					where: { personId: person.personId },
					update: {
						firstName: person.firstName,
						lastName: person.lastName,
						email: person.email,
						deceased: person.deceased,
						cellPhone: person.cellPhone,
						homePhone: person.homePhone,
						email2: person.email2,
						middleName: person.middleName,
						suffix: person.suffix,
						modifiedDate: person.modifiedDate,
						nickName: person.nickName,
						salutation: person.salutation,
						username: person.username,
						Address: person.addressID
							? {
									connect: { addressID: person.addressID },
								}
							: undefined,
					},
					create: {
						personId: person.personId,
						firstName: person.firstName,
						lastName: person.lastName,
						email: person.email,
						deceased: person.deceased,
						cellPhone: person.cellPhone,
						homePhone: person.homePhone,
						email2: person.email2,
						middleName: person.middleName,
						suffix: person.suffix,
						modifiedDate: person.modifiedDate,
						nickName: person.nickName,
						salutation: person.salutation,
						username: person.username,
						Address: person.addressID
							? {
									connect: { addressID: person.addressID },
								}
							: undefined,
					},
				}),
			),
		)
		return results
	})
}

export const load = async () => {
	console.log('Loading people')
	await loadData<PersonVM, Person>(
		'/People',
		await processEntities(upsertPeople),
	)
	console.log('---')
}
