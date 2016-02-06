
enum NSDatePickerStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case TextFieldAndStepperDatePickerStyle
  case ClockAndCalendarDatePickerStyle
  case TextFieldDatePickerStyle
}
enum NSDatePickerMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case SingleDateMode
  case RangeDateMode
}
struct NSDatePickerElementFlags : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var HourMinuteDatePickerElementFlag: NSDatePickerElementFlags { get }
  static var HourMinuteSecondDatePickerElementFlag: NSDatePickerElementFlags { get }
  static var TimeZoneDatePickerElementFlag: NSDatePickerElementFlags { get }
  static var YearMonthDatePickerElementFlag: NSDatePickerElementFlags { get }
  static var YearMonthDayDatePickerElementFlag: NSDatePickerElementFlags { get }
  static var EraDatePickerElementFlag: NSDatePickerElementFlags { get }
}
class NSDatePickerCell : NSActionCell {
  var datePickerStyle: NSDatePickerStyle
  var drawsBackground: Bool
  @NSCopying var backgroundColor: NSColor
  @NSCopying var textColor: NSColor
  var datePickerMode: NSDatePickerMode
  var datePickerElements: NSDatePickerElementFlags
  @NSCopying var calendar: Calendar?
  @NSCopying var locale: Locale?
  @NSCopying var timeZone: TimeZone?
  @NSCopying var dateValue: Date
  var timeInterval: TimeInterval
  @NSCopying var minDate: Date?
  @NSCopying var maxDate: Date?
  unowned(unsafe) var delegate: @sil_unmanaged NSDatePickerCellDelegate?
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: Coder)
}
struct __dateCellFlags {
  var elements: UInt32
  var controlStyle: UInt32
  var controlMode: UInt32
  var trackingHand: UInt32
  var reserved2: UInt32
  var drawsBackground: UInt32
  var digitsEntered: UInt32
  var forcesLeadingZeroes: UInt32
  var wrapsDateComponentArithmetic: UInt32
  init()
  init(elements: UInt32, controlStyle: UInt32, controlMode: UInt32, trackingHand: UInt32, reserved2: UInt32, drawsBackground: UInt32, digitsEntered: UInt32, forcesLeadingZeroes: UInt32, wrapsDateComponentArithmetic: UInt32)
}
protocol NSDatePickerCellDelegate : ObjectProtocol {
  optional func datePickerCell(aDatePickerCell: NSDatePickerCell, validateProposedDateValue proposedDateValue: AutoreleasingUnsafeMutablePointer<Date?>, timeInterval proposedTimeInterval: UnsafeMutablePointer<TimeInterval>)
}