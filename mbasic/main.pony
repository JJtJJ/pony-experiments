actor Main
  new create(env: Env) =>
    A.m(1,"Hello")

class A
  fun m[X,Y](x: X, y: Y) =>
    None
