
@available(OSX 10.11, *)
class CNInstantMessageAddress : Object, Copying, SecureCoding {
  var username: String { get }
  var service: String { get }
  init(username: String, service: String)
  class func localizedStringFor(key key: String) -> String
  class func localizedStringFor(service service: String) -> String
  init()
  @available(OSX 10.11, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(OSX 10.11, *)
let CNInstantMessageAddressUsernameKey: String
@available(OSX 10.11, *)
let CNInstantMessageAddressServiceKey: String
@available(OSX 10.11, *)
let CNInstantMessageServiceAIM: String
@available(OSX 10.11, *)
let CNInstantMessageServiceFacebook: String
@available(OSX 10.11, *)
let CNInstantMessageServiceGaduGadu: String
@available(OSX 10.11, *)
let CNInstantMessageServiceGoogleTalk: String
@available(OSX 10.11, *)
let CNInstantMessageServiceICQ: String
@available(OSX 10.11, *)
let CNInstantMessageServiceJabber: String
@available(OSX 10.11, *)
let CNInstantMessageServiceMSN: String
@available(OSX 10.11, *)
let CNInstantMessageServiceQQ: String
@available(OSX 10.11, *)
let CNInstantMessageServiceSkype: String
@available(OSX 10.11, *)
let CNInstantMessageServiceYahoo: String