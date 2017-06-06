actor Main
  new create(env: Env) =>
    var f = Foo("create")
    var f' = Foo.bar(52, "Hello there")
    //var f'' = Foo.foobar(52)

class Foo[T]
  var _t: (T | None) 

  new create(t: T) =>
    _t = consume t

  new bar(i: U32, t: T) =>
    _t = consume t

  new bad(i: U32) =>
    _t = None

  fun foobar(t: T) =>
    None
