type AsyncFunction<T, U> = (input: T) => Promise<U>

export default function composeAsync(func1: any, func2: any) {
	return async (input: any) => {
		const resultFunc1 = await func1(input)
		return func2(resultFunc1)
	}
}
