actor Main
  new create(env: Env) =>
    var v: (A[U32] | B[String])
    v = A[U32]
    match v
    | let x: A[U32] => None
    | let y: B => None
    end

class A[X]
  new create() => None

class B[X]
  new create() => None
