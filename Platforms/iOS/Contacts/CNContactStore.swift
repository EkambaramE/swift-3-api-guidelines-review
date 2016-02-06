
@available(iOS 9.0, *)
enum CNEntityType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Contacts
}
@available(iOS 9.0, *)
enum CNAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NotDetermined
  case Restricted
  case Denied
  case Authorized
}
@available(iOS 9.0, *)
class CNContactStore : Object {
  class func authorizationStatusFor(entityType: CNEntityType) -> CNAuthorizationStatus
  func requestAccessFor(entityType: CNEntityType, completionHandler: (Bool, Error?) -> Void)
  func unifiedContactsMatching(predicate: Predicate, keysToFetch keys: [CNKeyDescriptor]) throws -> [CNContact]
  func unifiedContactWith(identifier identifier: String, keysToFetch keys: [CNKeyDescriptor]) throws -> CNContact
  func enumerateContactsWith(fetchRequest: CNContactFetchRequest, usingBlock block: (CNContact, UnsafeMutablePointer<ObjCBool>) -> Void) throws
  func groupsMatching(predicate: Predicate?) throws -> [CNGroup]
  func containersMatching(predicate: Predicate?) throws -> [CNContainer]
  func execute(saveRequest: CNSaveRequest) throws
  func defaultContainerIdentifier() -> String
  init()
}
@available(iOS 9.0, *)
let CNContactStoreDidChangeNotification: String