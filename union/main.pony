actor Main
  new create(env: Env) =>
    var a = A.create()
    var b = B.create()
    var d = D[(A|B)](a).put(b)
    


class A
  new create() =>
    ""

class B
  new create() =>
    ""

class D[X: Any]
  var _x: X

  new create(x: X) =>
    _x = consume x

  fun ref put(x: X) =>
    _x = consume x
