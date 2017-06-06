use "collections"
use "itertools"

actor Main
  new create(env: Env) =>
    Filter(
      Zip2(list1.values(), list2.values()),
      {(i: (U32, String)): Bool => (i._1 % 2) == 0}
    )
