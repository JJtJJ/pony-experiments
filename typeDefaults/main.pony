actor Main
  new create(env: Env) =>
    var a = A(1)

class A[X = U32]
  var _x: X

  new create(x: X) =>
    _x = consume x
