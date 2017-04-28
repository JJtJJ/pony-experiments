actor Main
  new create(env: Env) =>
    ""

class Util
  fun move[T: Any val](a: List[T], b: List[T]) =>
    ""

  fun bad[T: Any val]() =>
    ""

class List[T: Any val]
  var _head: ListNode[T]

  new create(t: T) =>
    _head = ListNode[T](t)

class ListNode[T: Any val]
  var _v: T

  new create(t: T) =>
    _v = t
