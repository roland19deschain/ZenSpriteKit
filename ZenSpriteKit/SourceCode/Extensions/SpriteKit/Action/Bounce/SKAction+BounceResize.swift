import SpriteKit

public extension SKAction {
	
	static func resize(
		toWidth: CGFloat,
		duration: TimeInterval,
		springDamping: CGFloat,
		initialSpringVelocity: CGFloat
	) -> SKAction {
		animate(
			keyPath: \SKSpriteNode.size.width,
			to: toWidth,
			duration: duration,
			springDamping: springDamping,
			initialSpringVelocity: initialSpringVelocity
		)
	}
	
	static func resize(
		toHeight: CGFloat,
		duration: TimeInterval,
		springDamping: CGFloat,
		initialSpringVelocity: CGFloat
	) -> SKAction {
		animate(
			keyPath: \SKSpriteNode.size.height,
			to: toHeight,
			duration: duration,
			springDamping: springDamping,
			initialSpringVelocity: initialSpringVelocity
		)
	}
	
	static func resize(
		byWidth: CGFloat,
		duration: TimeInterval,
		springDamping: CGFloat,
		initialSpringVelocity: CGFloat
	) -> SKAction {
		animate(
			keyPath: \SKSpriteNode.size.width,
			by: byWidth,
			duration: duration,
			springDamping: springDamping,
			initialSpringVelocity: initialSpringVelocity
		)
	}
	
	static func resize(
		byHeight: CGFloat,
		duration: TimeInterval,
		springDamping: CGFloat,
		initialSpringVelocity: CGFloat
	) -> SKAction {
		animate(
			keyPath: \SKSpriteNode.size.height,
			by: byHeight,
			duration: duration,
			springDamping: springDamping,
			initialSpringVelocity: initialSpringVelocity
		)
	}
	
	static func resize(
		byWidth width: CGFloat,
		height: CGFloat,
		duration: TimeInterval,
		springDamping: CGFloat,
		initialSpringVelocity: CGFloat
	) -> SKAction {
		.group([
			animate(
				keyPath: \SKSpriteNode.size.width,
				by: width,
				duration: duration,
				springDamping: springDamping,
				initialSpringVelocity: initialSpringVelocity
			),
			animate(
				keyPath: \SKSpriteNode.size.height,
				by: height,
				duration: duration,
				springDamping: springDamping,
				initialSpringVelocity: initialSpringVelocity
			)
		])
	}
	
	static func resize(
		toWidth width: CGFloat,
		height: CGFloat,
		duration: TimeInterval,
		springDamping: CGFloat,
		initialSpringVelocity: CGFloat
	) -> SKAction {
		.group([
			resize(
				toWidth: width,
				duration: duration,
				springDamping: springDamping,
				initialSpringVelocity: initialSpringVelocity
			),
			resize(
				toHeight: height,
				duration: duration,
				springDamping: springDamping,
				initialSpringVelocity: initialSpringVelocity
			)
		])
	}
	
}
