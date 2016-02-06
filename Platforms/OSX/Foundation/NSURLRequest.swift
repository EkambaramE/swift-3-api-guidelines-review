
enum URLRequestCachePolicy : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case UseProtocolCachePolicy
  case ReloadIgnoringLocalCacheData
  case ReloadIgnoringLocalAndRemoteCacheData
  static var ReloadIgnoringCacheData: URLRequestCachePolicy { get }
  case ReturnCacheDataElseLoad
  case ReturnCacheDataDontLoad
  case ReloadRevalidatingCacheData
}
enum URLRequestNetworkServiceType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NetworkServiceTypeDefault
  case NetworkServiceTypeVoIP
  case NetworkServiceTypeVideo
  case NetworkServiceTypeBackground
  case NetworkServiceTypeVoice
}
class URLRequest : Object, SecureCoding, Copying, MutableCopying {
  class func supportsSecureCoding() -> Bool
  convenience init(url URL: URL)
  init(url URL: URL, cachePolicy: URLRequestCachePolicy, timeoutInterval: TimeInterval)
  @NSCopying var url: URL? { get }
  var cachePolicy: URLRequestCachePolicy { get }
  var timeoutInterval: TimeInterval { get }
  @NSCopying var mainDocumentURL: URL? { get }
  @available(OSX 10.7, *)
  var networkServiceType: URLRequestNetworkServiceType { get }
  @available(OSX 10.8, *)
  var allowsCellularAccess: Bool { get }
  convenience init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copyWith(zone: Zone = nil) -> AnyObject
  func mutableCopyWith(zone: Zone = nil) -> AnyObject
}
class MutableURLRequest : URLRequest {
  @NSCopying var url: URL?
  var cachePolicy: URLRequestCachePolicy
  var timeoutInterval: TimeInterval
  @NSCopying var mainDocumentURL: URL?
  @available(OSX 10.7, *)
  var networkServiceType: URLRequestNetworkServiceType
  @available(OSX 10.8, *)
  var allowsCellularAccess: Bool
  convenience init(url URL: URL)
  init(url URL: URL, cachePolicy: URLRequestCachePolicy, timeoutInterval: TimeInterval)
  convenience init()
  init?(coder aDecoder: Coder)
}
extension URLRequest {
  var httpMethod: String? { get }
  var allHTTPHeaderFields: [String : String]? { get }
  func valueFor(httpHeaderField field: String) -> String?
  @NSCopying var httpBody: Data? { get }
  var httpBodyStream: InputStream? { get }
  var httpShouldHandleCookies: Bool { get }
  @available(OSX 10.7, *)
  var httpShouldUsePipelining: Bool { get }
}
extension MutableURLRequest {
  var httpMethod: String
  var allHTTPHeaderFields: [String : String]?
  func setValue(value: String?, forHTTPHeaderField field: String)
  func addValue(value: String, forHTTPHeaderField field: String)
  @NSCopying var httpBody: Data?
  var httpBodyStream: InputStream?
  var httpShouldHandleCookies: Bool
  @available(OSX 10.7, *)
  var httpShouldUsePipelining: Bool
}