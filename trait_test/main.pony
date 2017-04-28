actor Main
  new create(env: Env) => 
    ""

trait Getter[T: Any]
  fun get(s: T): T

class 
