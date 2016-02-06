
enum NSAttributeType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case UndefinedAttributeType
  case Integer16AttributeType
  case Integer32AttributeType
  case Integer64AttributeType
  case DecimalAttributeType
  case DoubleAttributeType
  case FloatAttributeType
  case StringAttributeType
  case BooleanAttributeType
  case DateAttributeType
  case BinaryDataAttributeType
  @available(tvOS 3.0, *)
  case TransformableAttributeType
  @available(tvOS 3.0, *)
  case ObjectIDAttributeType
}
@available(tvOS 3.0, *)
class NSAttributeDescription : NSPropertyDescription {
  var attributeType: NSAttributeType
  var attributeValueClassName: String?
  var defaultValue: AnyObject?
  @available(tvOS 3.0, *)
  @NSCopying var versionHash: Data { get }
  @available(tvOS 3.0, *)
  var valueTransformerName: String?
  @available(tvOS 5.0, *)
  var allowsExternalBinaryDataStorage: Bool
  init()
  init?(coder aDecoder: Coder)
}
struct __attributeDescriptionFlags {
  var _hasMaxValueInExtraIvars: UInt32
  var _hasMinValueInExtraIvars: UInt32
  var _storeBinaryDataExternally: UInt32
  var _reservedAttributeDescription: UInt32
  init()
  init(_hasMaxValueInExtraIvars: UInt32, _hasMinValueInExtraIvars: UInt32, _storeBinaryDataExternally: UInt32, _reservedAttributeDescription: UInt32)
}