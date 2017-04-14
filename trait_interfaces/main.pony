actor Main
  new create(env: Env) =>
    let stephen = Person.create("Stephen","Bingham")
    env.out.print(stephen.getName())
    env.out.print(stephen.getNick())

trait Named
  fun getName(): String => "First"
  fun getNick(): String => "Nick"

trait Surnamed
  fun getName(): String => "Last"

trait TwoNamed is Named
  fun getLastName(): String
  fun getNick(): String => "Steve"

class Person is TwoNamed
  var _name: String
  var _last: String

  new create(name: String, last: String) =>
    _name = name
    _last = last

  fun getName(): String =>
    _name
  fun getLastName(): String =>
    _last

class PersonB is (Named & Surnamed)
  var _name: String
  var _last: String

  new create(name: String, last: String) =>
    _name = name
    _last = last
