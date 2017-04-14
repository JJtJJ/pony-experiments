actor Main
  new create(env: Env) =>
    var v: (A[U32] | B[String])
    v = A[U32].create(U32(1))
    v = B[String].create("Hello")
    let res = match v
    | let x: A[U32] => "type A"
    | let y: B[String] => "type B"
    else
      "something else"
    end
    env.out.print(res)

class A[X: Any val]
  var _x: X
  
  new create(x': X) =>
    _x = x'

  fun get(): X => _x

class B[X: Any val]
  var _x: X
  
  new create(x': X) =>
    _x = x'

  fun get(): X => _x
