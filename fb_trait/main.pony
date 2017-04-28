actor Main
  new create(env: Env) =>
    ""
trait C[X: C[X,Y] val, Y: D[X,Y] val]
  fun get(): X

trait D[X: C[X,Y] val, Y: D[X,Y] val]
  fun get(): Y

class CC is C[CC val, DD val]
  var _c: CC

  new create(c: CC) =>
    _c = c
  
  fun get(): CC => _c

class DD is D[CC val, DD val]
  var _d: DD

  new create(d: DD) =>
    _d = d
  
  fun get(): DD => _d
