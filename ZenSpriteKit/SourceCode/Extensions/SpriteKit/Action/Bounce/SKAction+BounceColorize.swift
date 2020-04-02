import SpriteKit

public extension SKAction {
	
	static func colorize(
		to colorBlendFactor: CGFloat,
		duration: TimeInterval,
		springDamping: CGFloat,
		initialSpringVelocity: CGFloat
	) -> SKAction {
		animate(
			keyPath: \SKSpriteNode.colorBlendFactor,
			to: colorBlendFactor,
			duration: duration,
			springDamping: springDamping,
			initialSpringVelocity: initialSpringVelocity
		)
	}
	
}
