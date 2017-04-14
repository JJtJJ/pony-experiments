actor Main
  new create(env: Env) =>
    var b: Gettable[Any]
    b = Box("Hello")

interface Gettable[X]
  fun get(): X

class Box
  var _x: String

  new create(x: String) =>
    _x = x

  fun get(): String =>
    _x
