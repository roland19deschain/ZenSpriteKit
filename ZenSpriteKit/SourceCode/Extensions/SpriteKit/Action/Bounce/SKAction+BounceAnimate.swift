import SpriteKit

public extension SKAction {
	
	static func animate<T>(
		keyPath: ReferenceWritableKeyPath<T, CGFloat>,
		by: CGFloat,
		duration: TimeInterval,
		springDamping: CGFloat,
		initialSpringVelocity: CGFloat
	) -> SKAction {
		animate(
			keyPath: keyPath,
			by: by,
			to: nil,
			duration: duration,
			springDamping: springDamping,
			initialSpringVelocity: initialSpringVelocity
		)
	}
	
	static func animate<T>(
		keyPath: ReferenceWritableKeyPath<T, CGFloat>,
		to: CGFloat,
		duration: TimeInterval,
		springDamping: CGFloat,
		initialSpringVelocity: CGFloat
	) -> SKAction {
		animate(
			keyPath: keyPath,
			by: nil,
			to: to,
			duration: duration,
			springDamping: springDamping,
			initialSpringVelocity: initialSpringVelocity
		)
	}
	
}
