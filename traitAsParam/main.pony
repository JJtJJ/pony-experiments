actor Main
  new create(env: Env) =>
    var a = A.create()
    var d = D[Gettable[String]](a)
    env.out.print(d.get().get())

trait Gettable[X: Any]
  fun get(): X

class A is Gettable[String]
  new create() =>
    ""
  
  fun get(): String =>
    "Hello"

class D[X: Any]
  var _x: X

  new create(x: X) =>
    _x = consume x

  fun get(): this->X =>
    _x
