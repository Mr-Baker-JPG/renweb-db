import 'dotenv/config'
import api from './api'

async function main() {
	try {
		console.log('Starting data load\n---')
		await api.Address.load()
		await api.Person.load()
		await api.Staff.load()
		await api.Family.load()
		await api.PersonFamily.load()
		await api.PersonDemographic.load()
		await api.PersonInterest.load()
		await api.PersonReligious.load()
		await api.PersonVehicle.load()
		await api.PersonWork.load()

		await api.SchoolYear.load()
		await api.SchoolTerm.load()
		await api.SchoolConfig.load()

		await api.Locker.load()
		await api.Student.load()

		await api.Alert.load() // happens after student/studentModel
	} catch (e) {
		console.log(e)
	}
}

try {
	main()
} catch (e) {
	console.log(e)
}
