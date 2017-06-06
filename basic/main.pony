actor Main
  new create(env: Env) =>
    var a = A("Hello")
    var b = B(a)

class A[T]
  new create(t: T) => None

class B[S]
  new create(a: A[S]) => None
