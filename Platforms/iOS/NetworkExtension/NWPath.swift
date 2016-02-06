
@available(iOS 9.0, *)
enum NWPathStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Invalid
  case Satisfied
  case Unsatisfied
  case Satisfiable
}
@available(iOS 9.0, *)
class NWPath : Object {
  @available(iOS 9.0, *)
  var status: NWPathStatus { get }
  @available(iOS 9.0, *)
  var isExpensive: Bool { get }
  @available(iOS 9.0, *)
  func isEqualTo(path: NWPath) -> Bool
  init()
}