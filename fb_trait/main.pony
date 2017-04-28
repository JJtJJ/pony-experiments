actor Main
  new create(env: Env) =>
    ""

trait C[X: C[X,Y], Y: D[X,Y]]
  fun get(): this->X

trait D[X: C[X,Y], Y: D[X,Y]]
  fun get(): this->Y

class CC is C[CC, DD]
  var _c: CC

  new create(c: CC) =>
    _c = consume c
  
  fun get(): this->CC => _c

class DD is D[CC, DD]
  var _d: DD

  new create(d: DD) =>
    _d = consume d
  
  fun get(): this->DD => _d
