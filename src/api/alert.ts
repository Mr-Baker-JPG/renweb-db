import { AlertApplication, type Alert } from '@prisma/client'
import { components } from '../types/facts'
import { prisma } from '../utils/db'
import { loadData, processEntities } from './api'

type AlertVM = components['schemas']['AlertVm']
type AlertApplicationVM = components['schemas']['AlertApplicationVm']

async function upsertAlert(alerts: AlertVM[]) {
	return await prisma.$transaction(async tx => {
		const results = await Promise.all(
			alerts.map(entity =>
				tx.alert.upsert({
					where: { alertID: entity.alertID },
					update: {
						active: entity.active,
						description: entity.description,
						title: entity.title,
						StudentModel: {
							connect: {
								studentId: entity.studentID,
							},
						},
					},
					create: {
						alertID: entity.alertID,
						active: entity.active,
						description: entity.description,
						title: entity.title,
						StudentModel: {
							connect: {
								studentId: entity.studentID,
							},
						},
					},
				}),
			),
		)
		return results
	})
}

// async function upsertAlertApplication(alerts: AlertApplicationVM[]) {
// 	return await prisma.$transaction(async tx => {
// 		const results = await Promise.all(
// 			alerts.map(entity =>
// 				tx.alertApplication.upsert({
// 					where: { applicationID: entity.applicationID },
// 					update: {
// 						visual: entity.visual,
// 						beep: entity.beep,
// 						popUp: entity.popUp,
// 						popUpAlways: entity.popUpAlways,
// 						Alert: {
// 							connect: {
// 								alertID: entity.alertID,
// 							},
// 						},
// 					},
// 					create: {
// 						applicationID: entity.applicationID,
// 						visual: entity.visual,
// 						beep: entity.beep,
// 						popUp: entity.popUp,
// 						popUpAlways: entity.popUpAlways,
// 						Alert: {
// 							connect: {
// 								alertID: entity.alertID,
// 							},
// 						},
// 					},
// 				}),
// 			),
// 		)
// 		return results
// 	})
// }

export const load = async () => {
	console.log('Loading Alert')
	await loadData<AlertVM, Alert>(
		'/students/Alerts',
		await processEntities(upsertAlert),
	)
	console.log('---')
	// console.log('Loading Alert Applications')
	// await loadData<AlertApplicationVM, AlertApplication>(
	// 	'/students/AlertApplication',
	// 	await processEntities(upsertAlertApplication),
	// )
	// console.log('---')
}
