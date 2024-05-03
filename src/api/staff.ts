import { type Staff } from '@prisma/client'
import { components } from '../types/facts'
import { prisma } from '../utils/db'
import { loadData, processEntities } from './api'

type StaffVM = components['schemas']['StaffVmOut']

async function upsertStaff(staffs: StaffVM[]) {
	return await prisma.$transaction(async tx => {
		const results = await Promise.all(
			staffs.map(entity =>
				tx.staff.upsert({
					where: { staffId: entity.staffId },
					update: {
						active: entity.active,
						administrator: entity.administrator,
						blockSurvey: entity.blockSurvey,
						districtUser: entity.districtUser,
						districtWideUser: entity.districtWideUser,
						dualEnrolledUser: entity.dualEnrolledUser,
						elementary: entity.elementary,
						faculty: entity.faculty,
						fullTime: entity.fullTime,
						highSchool: entity.highSchool,
						middleSchool: entity.middleSchool,
						preschool: entity.preschool,
						staffDirectoryBlock: entity.staffDirectoryBlock,
						substitute: entity.substitute,
						unsubscribeRenWebEmail: entity.unsubscribeRenWebEmail,
						endDate: entity.endDate,
						startDate: entity.startDate,
						fte: entity.fte,
						financialFamilyId: entity.financialFamilyId,
						pda: entity.pda,
						roomId: entity.roomId,
						schools: JSON.stringify(entity.schools),
						department: entity.department,
						firstName: entity.firstName,
						lastName: entity.lastName,
						legacyStaffId: entity.legacyStaffId,
						middleName: entity.middleName,
						parentAlertPin: entity.parentAlertPin,
						spouse: entity.spouse,
						teacherSite: entity.teacherSite,
						name: entity.name,
					},
					create: {
						staffId: entity.staffId,
						active: entity.active,
						administrator: entity.administrator,
						blockSurvey: entity.blockSurvey,
						districtUser: entity.districtUser,
						districtWideUser: entity.districtWideUser,
						dualEnrolledUser: entity.dualEnrolledUser,
						elementary: entity.elementary,
						faculty: entity.faculty,
						fullTime: entity.fullTime,
						highSchool: entity.highSchool,
						middleSchool: entity.middleSchool,
						preschool: entity.preschool,
						staffDirectoryBlock: entity.staffDirectoryBlock,
						substitute: entity.substitute,
						unsubscribeRenWebEmail: entity.unsubscribeRenWebEmail,
						endDate: entity.endDate,
						startDate: entity.startDate,
						fte: entity.fte,
						financialFamilyId: entity.financialFamilyId,
						pda: entity.pda,
						roomId: entity.roomId,
						schools: JSON.stringify(entity.schools),
						department: entity.department,
						firstName: entity.firstName,
						lastName: entity.lastName,
						legacyStaffId: entity.legacyStaffId,
						middleName: entity.middleName,
						parentAlertPin: entity.parentAlertPin,
						spouse: entity.spouse,
						teacherSite: entity.teacherSite,
						name: entity.name,
					},
				}),
			),
		)
		return results
	})
}

export const load = async () => {
	console.log('Loading Staff')
	await loadData<StaffVM, Staff>(
		'/people/Staff',
		await processEntities(upsertStaff),
	)
	console.log('---')
}
