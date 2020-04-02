import SpriteKit

public extension SKAction {
	
	static func speed(
		by speed: CGFloat,
		duration: TimeInterval,
		springDamping: CGFloat,
		initialSpringVelocity: CGFloat
	) -> SKAction {
		animate(
			keyPath: \SKNode.speed,
			by: speed,
			duration: duration,
			springDamping: springDamping,
			initialSpringVelocity: initialSpringVelocity
		)
	}
	
	static func speed(
		to speed: CGFloat,
		duration: TimeInterval,
		springDamping: CGFloat,
		initialSpringVelocity: CGFloat
	) -> SKAction {
		animate(
			keyPath: \SKNode.speed,
			to: speed,
			duration: duration,
			springDamping: springDamping,
			initialSpringVelocity: initialSpringVelocity
		)
	}
	
}
