

//:  Your friend Jasmine is the first to register for the event. Add her name to `registrationList` using the `append(_:)` method. Print the contents of the collection.
var registrationList: [String] = []
registrationList.append("Jasmine")
print(registrationList)

//:  Add four additional names into the array using the `+=` operator. All of the names should be added in one step. Print the contents of the collection.
registrationList += ["Sam", "Isla", "Ava", "Mia"]
print(registrationList)
//:  Use the `insert(_:at:)` method to add `Trey` into the array as the second element. Print the contents of the collection.
registrationList = Array(registrationList.prefix(2)) + ["Trey"] + Array(registrationList.suffix(from: 2))
print(registrationList)
//:  Somebody had a conflict and decided to transfer registration to someone else. Use array subscripting to change the sixth element to `Elton`. Print the contents of the collection.
registrationList = Array(registrationList.prefix(5)) + ["Elton"] + Array(registrationList.suffix(from: 6))
print(registrationList)
//:  Call `removeLast()` on `registrationList`. If done correctly, this should remove `Elton` from the collection. Store the result of `removeLast()` into a new constant `deletedItem`, then print `deletedItem`.
registrationList.removeLast()
let deletedItem = registrationList.removeLast()
print(deletedItem)
print(registrationList)

/*:
page 1 of 4  |  [Next: App Exercise - Activity Challenge](@next)
 */
