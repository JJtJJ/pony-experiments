actor Main
  new create(env: Env) =>
    A.foo("Hello")
    A.bar(U32(52), "Hello")

class A

  fun foo[T](t: T) => None

  fun bar[T, S](t: T, s: S) => None
