actor Main
  new create(env: Env) =>
    ""

actor Brian[X: Any val]
  var _x: X

  new create(x: X) =>
    _x = x

  be set(x: X) =>
    _x = x
