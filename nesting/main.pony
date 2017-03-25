actor Main
	new create(env: Env) =>
		"Pass"

class E[X: Any val]
	var x: X

	new create(x': X) =>
		x = x'

	fun get(): X => x

class F[Y: Any val, Z: E[Y]]
	var y: Y
	var z: E[Y]

	new create(y': Y) =>
		y = y'
		z = E[Y](y)

	new create2(z': E[Y]) =>
		y = z'.get()
		z = z'