actor Main
  new create(env: Env) =>
    var x: HasName = Person("Ben")

interface HasName
  fun getName(): String
  fun getSteve(): String =>
    "Steve"

class Person is HasName
  var _name: String

  new create(name: String) =>
    _name = name

  fun getName(): String =>
    _name
