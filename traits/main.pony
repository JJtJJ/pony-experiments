actor Main
  new create(env: Env) =>
    let b = SBox[String]("Hello")
    let s = b.get()
    env.out.print(s)

trait Holding[X: Any val]
  fun get(): X

class Box[X: Any val] is Holding[X]
  var _x: X

  new create(x: X) =>
    _x = x

  fun get(): X => _x

trait HoldingString is Holding[Stringable val]

class SBox[X: Stringable val] is HoldingString
  var _x: X

  new create(x: X) =>
    _x = x

  fun get(): X => _x
