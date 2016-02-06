
let SCNLightingModelPhong: String
let SCNLightingModelBlinn: String
let SCNLightingModelLambert: String
let SCNLightingModelConstant: String
enum SCNCullMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Back
  case Front
}
enum SCNTransparencyMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case AOne
  case RGBZero
}
@available(iOS 9.0, *)
enum SCNBlendMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Alpha
  case Add
  case Subtract
  case Multiply
  case Screen
  case Replace
}
@available(iOS 8.0, *)
class SCNMaterial : Object, SCNAnimatable, SCNShadable, Copying, SecureCoding {
  var name: String?
  var diffuse: SCNMaterialProperty { get }
  var ambient: SCNMaterialProperty { get }
  var specular: SCNMaterialProperty { get }
  var emission: SCNMaterialProperty { get }
  var transparent: SCNMaterialProperty { get }
  var reflective: SCNMaterialProperty { get }
  var multiply: SCNMaterialProperty { get }
  var normal: SCNMaterialProperty { get }
  @available(iOS 9.0, *)
  var ambientOcclusion: SCNMaterialProperty { get }
  @available(iOS 9.0, *)
  var selfIllumination: SCNMaterialProperty { get }
  var shininess: CGFloat
  var transparency: CGFloat
  var lightingModelName: String
  var isLitPerPixel: Bool
  var isDoubleSided: Bool
  var cullMode: SCNCullMode
  var transparencyMode: SCNTransparencyMode
  var locksAmbientWithDiffuse: Bool
  var writesToDepthBuffer: Bool
  @available(iOS 8.0, *)
  var readsFromDepthBuffer: Bool
  @available(iOS 8.0, *)
  var fresnelExponent: CGFloat
  @available(iOS 9.0, *)
  var blendMode: SCNBlendMode
  init()
  @available(iOS 8.0, *)
  func add(animation: CAAnimation, forKey key: String?)
  @available(iOS 8.0, *)
  func removeAllAnimations()
  @available(iOS 8.0, *)
  func removeAnimationFor(key key: String)
  @available(iOS 8.0, *)
  var animationKeys: [String] { get }
  @available(iOS 8.0, *)
  func animationFor(key key: String) -> CAAnimation?
  @available(iOS 8.0, *)
  func pauseAnimationFor(key key: String)
  @available(iOS 8.0, *)
  func resumeAnimationFor(key key: String)
  @available(iOS 8.0, *)
  func isAnimationFor(keyPaused key: String) -> Bool
  @available(iOS 8.0, *)
  func removeAnimationFor(key key: String, fadeOutDuration duration: CGFloat)
  @available(iOS 8.0, *)
  var program: SCNProgram?
  @available(iOS 8.0, *)
  func handleBindingOf(symbol symbol: String, usingBlock block: SCNBindingBlock? = nil)
  @available(iOS 8.0, *)
  func handleUnbindingOf(symbol symbol: String, usingBlock block: SCNBindingBlock? = nil)
  @available(iOS 8.0, *)
  var shaderModifiers: [String : String]?
  @available(iOS 8.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}