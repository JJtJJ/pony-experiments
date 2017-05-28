actor Main
  new create(env: Env) =>
    let myclass = MyClass("Hello")
    //var something = myclass.foo("Hi")

class MyClass[A]
  var _value: A

  new create(a: A) =>
    _value = consume a

  fun get(): this->A =>
    _value

  fun ref set(a: A) =>
    _value = consume a

  fun foo[T](t: T): T =>
    t
