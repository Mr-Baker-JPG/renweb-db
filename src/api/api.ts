import client from '../utils/client'
import { paths } from '../types/facts'

export async function processEntities<T, V>(
	processFunction: (entities: T[]) => Promise<V[]>,
) {
	return async (entities: T[]) => {
		const MAX_RETRIES = 5
		let retries = 0
		let result: V[] = []

		while (retries < MAX_RETRIES) {
			try {
				result = await processFunction(entities)
				break
			} catch (error: any) {
				if (error.code === 'P2034') {
					retries++
					continue
				}
				throw error
			}
		}

		console.log(`Processed ${result.length} records in ${retries} retries.`)
		return result
	}
}

export async function loadData<T, R>(
	endpoint: keyof paths | undefined,
	processData: (data: T[]) => Promise<R[]>,
	queryParams: Record<string, any> = {
		Page: 1,
		PageSize: 7000,
		'api-version=': 1,
	},
	path: Record<string, any> = {},
): Promise<R[]> {
	if (endpoint === undefined) {
		throw new Error('endpoint is undefined')
	}
	const { data, error, response } = await client.GET(endpoint, {
		params: { query: queryParams, path },
	})

	if (response.status >= 400) {
		throw new Error(error)
	}
	if (response.status >= 200 && response.status < 300) {
		// return Promise.all(data.results.map((data: T) => processData(data)))
		return await processData(data.results || [])
		// return data.results.map((data: T) => processData(data))
	} else {
		return []
	}
}

function endpointUpdate(endpoint: string) {}
