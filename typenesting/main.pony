actor Main
  new create(env: Env) =>
    var a = A[String]("Hello")
    var myclass = MyClass[String](a)

class A[S]
  var _s: S

  new create(s: S) =>
    _s = consume s

  fun get(): this->S =>
    _s

class MyClass[T: Any val]
  var _t: T

  new create(a: A[T]) =>
    _t = a.get() 
