import createClient, { type Middleware } from 'openapi-fetch'
import { components, paths } from '../types/facts'

const throwOnError: Middleware = {
	async onResponse(res) {
		if (res.status >= 400) {
			const contentType = res.headers.get('content-type')
			const body = res.headers.get('content-type')?.includes('json')
				? await res.clone().json()
				: await res.clone().text()
			throw new Error(
				`API Request Failed: Status ${
					res.status
				}, Content-Type: ${contentType}, Body: ${JSON.stringify(body)}`,
			)
		}
		return undefined
	},
}

const headers = {
	'Ocp-Apim-Subscription-Key': process.env.FACTS_SUBSCRIPTION_KEY || '',
	'Facts-Api-Key': process.env.FACTS_API_KEY || '',
}
const client = createClient<paths>({
	baseUrl: 'https://api.factsmgt.com/',
	headers,
})

client.use(throwOnError)

export default client
