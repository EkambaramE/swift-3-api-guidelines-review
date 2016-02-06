
class NSSet : Object, Copying, MutableCopying, SecureCoding, FastEnumeration {
  var count: Int { get }
  func member(object: AnyObject) -> AnyObject?
  func objectEnumerator() -> Enumerator
  init()
  init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  init?(coder aDecoder: Coder)
  func copyWith(zone: Zone = nil) -> AnyObject
  func mutableCopyWith(zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  func countByEnumerating(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}

extension NSSet : SequenceType {
  func generate() -> NSFastGenerator
  typealias Generator = NSFastGenerator
  typealias SubSequence = AnySequence<AnyObject>
}

extension NSSet {
  convenience init(objects elements: AnyObject...)
}

extension NSSet : ArrayLiteralConvertible {
  required convenience init(arrayLiteral elements: AnyObject...)
  typealias Element = AnyObject
}

extension NSSet {
  @objc(_swiftInitWithSet_NSSet:) convenience init(set anSet: NSSet)
}

extension NSSet : CustomReflectable {
  func customMirror() -> Mirror
}
extension NSSet {
  var allObjects: [AnyObject] { get }
  func anyObject() -> AnyObject?
  func contains(anObject: AnyObject) -> Bool
  var description: String { get }
  func descriptionWith(locale locale: AnyObject?) -> String
  func intersectsSet(otherSet: Set<Object>) -> Bool
  func isEqualTo(otherSet: Set<Object>) -> Bool
  func isSubsetOf(otherSet: Set<Object>) -> Bool
  @available(OSX 10.5, *)
  func adding(anObject: AnyObject) -> Set<Object>
  @available(OSX 10.5, *)
  func addingObjectsFrom(other: Set<Object>) -> Set<Object>
  @available(OSX 10.5, *)
  func addingObjectsFrom(other: [AnyObject]) -> Set<Object>
  @available(OSX 10.6, *)
  func enumerateObjects(block: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
  func enumerateObjects(opts: EnumerationOptions = [], usingBlock block: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
  func objectsPassingTest(predicate: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<Object>
  @available(OSX 10.6, *)
  func objectsWith(opts: EnumerationOptions = [], passingTest predicate: (AnyObject, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<Object>
}
extension NSSet {
  convenience init(object: AnyObject)
  convenience init(set: Set<Object>)
  convenience init(set: Set<Object>, copyItems flag: Bool)
  convenience init(array: [AnyObject])
}
class MutableSet : NSSet {
  func add(object: AnyObject)
  func remove(object: AnyObject)
  init?(coder aDecoder: Coder)
  init()
  init(capacity numItems: Int)
  convenience init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  convenience init(object: AnyObject)
  convenience init(set: Set<Object>)
  convenience init(set: Set<Object>, copyItems flag: Bool)
  convenience init(array: [AnyObject])
}
extension MutableSet {
  func addObjectsFrom(array: [AnyObject])
  func intersectSet(otherSet: Set<Object>)
  func minusSet(otherSet: Set<Object>)
  func removeAllObjects()
  func unionSet(otherSet: Set<Object>)
  func setSet(otherSet: Set<Object>)
}
extension MutableSet {
}
class CountedSet : MutableSet {
  init(capacity numItems: Int)
  convenience init(array: [AnyObject])
  convenience init(set: Set<Object>)
  func countFor(object: AnyObject) -> Int
  func objectEnumerator() -> Enumerator
  func add(object: AnyObject)
  func remove(object: AnyObject)
  init?(coder aDecoder: Coder)
  convenience init()
  convenience init(objects: UnsafePointer<AnyObject?>, count cnt: Int)
  convenience init(object: AnyObject)
  convenience init(set: Set<Object>, copyItems flag: Bool)
}