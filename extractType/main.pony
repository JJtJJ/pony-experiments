actor Main
  new create(env: Env) =>
    var b = B(A("Hello"), A("Hi"))

class A[S]
  var _s: S

  new create(s: S) =>
    _s = consume s

  fun get(): this->S =>
    _s

class B[T: Any #read, T2: Any #read]
  var _t: T
  var _t2: T2

  new create(a: A[T], a': A[T2]) =>
    _t = a.get()
    _t2 = a'.get()
