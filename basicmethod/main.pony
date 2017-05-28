actor Main
  new create(env: Env) =>
    MyClass.someMethod("Hello")

class MyClass

  fun someMethod[T](t: T) =>
    None
