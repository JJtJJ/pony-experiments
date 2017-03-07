actor Main
	new create(env: Env) =>
		var z = L[U32].create()
		
		// stringD = D("stringD")
		let stringD = D[String]("stringD")
		
		// We would like to have z.f1(stringD)
		z.f1[String](stringD)
		
		let stringE = E[String]("stringE")
		stringE.set("hello")
		// objectE = E[Object](10)
		let objectE = E[Any val](U32(10))
		objectE.set("hello")
		objectE.set(F.create())

		let intE = E[U32](32)
		// Shouldn't need to specify [String]
		z.f3[String](stringD, stringE)

		let f = F.create()
		// Shouldn't need any types in this line
		z.f1[U32](f.f3[U32](1))

class L[X: Any val]
	fun tag f1[Y: Any val](d: D[Y]) =>
		d.get()

	fun f2(e: E[X]) =>
		e.get()
	
	fun tag f3[Y: Any val](d: D[Y], e: E[Y]) =>
		d.set(e.get())

class F
	fun tag f3[Y: Any val](y: Y): D[Y] =>
		D[Y](y)

class D[Y: Any val]
	var y: Y

	new create(y': Y) =>
		y = y'

	fun get(): Y =>
		y

	fun ref set(y': Y) =>
		y = y'

class E[X: Any val]
	var x: X

	new create(x': X) =>
		x = x'

	fun get(): X =>
		x

	fun ref set(x': X) =>
		x = x'
