actor Main
  new create(env: Env) =>
    ""

class C[X: D[X,Y] val, Y: C[X,Y] val]
  var _x: X

  new create(x': X) =>
    _x = x'

class D[X: D[X,Y] val, Y: C[X,Y] val]
  var _y: Y

  new create(y': Y) =>
    _y = y'
