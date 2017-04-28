actor Main
  new create(env: Env) =>
    var x: HasName = Person.create()

interface HasName
  fun getName(): String
  fun getBob(): String => "Bob"

trait Named is HasName

class Person is Named
  new create() => ""
  fun getName(): String => "Steve"
