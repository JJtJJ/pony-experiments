actor Main
  new create(env: Env) =>
    // let x = 7 <- No good
    let x: I8 = 7
    env.out.print(x.string())
    let d = D[I8](x)
    env.out.print(d.get().string())

    let e = D[U32](9)

    // let y = 1 <- No good
    var z: U32 = 1
    z = 1 + 1 // Fine
    // z = 1 + U8(1) <- No good

class D[X: Any val]
  var _v: X

  new create(v: X) =>
    _v = v

  fun get(): X => _v

  fun ref set(v: X) => _v


