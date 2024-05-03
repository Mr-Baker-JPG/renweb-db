import { type Student } from '@prisma/client'
import { components } from '../types/facts'
import { prisma } from '../utils/db'
import { loadData, processEntities } from './api'

type StudentVM = components['schemas']['StudentModel']

async function upsertStudent(students: StudentVM[]) {
	return await prisma.$transaction(async tx => {
		const results = await Promise.all(
			students.map(async entity => {
				await tx.studentSchool.upsert({
					where: {
						personId: entity.studentId,
					},
					create: {
						personId: entity.studentId,
						enrollDate: entity.school?.enrollDate,
						gradeLevel: entity.school?.gradeLevel,
						graduationDate: entity.school?.graduationDate,
						nextGradeLevel: entity.school?.nextGradeLevel,
						nextSchoolCode: entity.school?.nextSchoolCode,
						nextStatus: entity.school?.nextStatus,
						status: entity.school?.status,
						substatus: entity.school?.substatus,
						withdrawDate: entity.school?.withdrawDate,
						withdrawReason: entity.school?.withdrawReason,
					},
					update: {
						enrollDate: entity.school?.enrollDate,
						gradeLevel: entity.school?.gradeLevel,
						graduationDate: entity.school?.graduationDate,
						nextGradeLevel: entity.school?.nextGradeLevel,
						nextSchoolCode: entity.school?.nextSchoolCode,
						nextStatus: entity.school?.nextStatus,
						status: entity.school?.status,
						substatus: entity.school?.substatus,
						withdrawDate: entity.school?.withdrawDate,
						withdrawReason: entity.school?.withdrawReason,
					},
				})

				const student = await tx.student.upsert({
					where: { studentId: entity.studentId },
					update: {
						schoolCode: entity.schoolCode,
						configSchoolId: entity.configSchoolId,
						personStudentId: entity.personStudentId,
					},
					create: {
						personStudentId: entity.personStudentId,
						configSchoolId: entity.configSchoolId,
						schoolCode: entity.schoolCode,
						Person: {
							connect: {
								personId: entity.studentId,
							},
						},
						School: {
							connect: {
								personId: entity.studentId,
							},
						},
						Lockers: {
							connect:
								entity.locker?.map(locker => ({
									lockerId: locker.id,
								})) || [],
						},
					},
				})

				return student
			}),
		)

		return results
	})
}

export const load = async () => {
	console.log('Loading Student')
	await loadData<StudentVM, Student>(
		'/Students',
		await processEntities(upsertStudent),
	)
	console.log('---')
}
