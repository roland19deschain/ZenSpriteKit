import SpriteKit

public extension SKAction {
	
	static func rotate(
		byAngle radians: CGFloat,
		duration: TimeInterval,
		springDamping: CGFloat,
		initialSpringVelocity: CGFloat
	) -> SKAction {
		animate(
			keyPath: \SKNode.zRotation,
			by: radians,
			duration: duration,
			springDamping: springDamping,
			initialSpringVelocity: initialSpringVelocity
		)
	}
	
	static func rotate(
		toAngle radians: CGFloat,
		duration: TimeInterval,
		springDamping: CGFloat,
		initialSpringVelocity: CGFloat
	) -> SKAction {
		animate(
			keyPath: \SKNode.zRotation,
			to: radians,
			duration: duration,
			springDamping: springDamping,
			initialSpringVelocity: initialSpringVelocity
		)
	}
	
}
