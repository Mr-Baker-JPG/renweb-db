import { PrismaClient } from '@prisma/client'
import { singleton } from './singleton.ts'

const prisma = singleton('prisma', () => new PrismaClient())
prisma.$connect()

export { prisma }
