import SpriteKit

public extension SKAction {
	
	static func scale(
		by scale: CGFloat,
		duration: TimeInterval,
		springDamping: CGFloat,
		initialSpringVelocity: CGFloat
	) -> SKAction {
		scaleX(
			by: scale,
			y: scale,
			duration: duration,
			springDamping: springDamping,
			initialSpringVelocity: initialSpringVelocity
		)
	}
	
	static func scale(
		to scale: CGFloat,
		duration: TimeInterval,
		springDamping: CGFloat,
		initialSpringVelocity: CGFloat
	) -> SKAction {
		scaleX(
			to: scale,
			y: scale,
			duration: duration,
			springDamping: springDamping,
			initialSpringVelocity: initialSpringVelocity
		)
	}
	
	static func scaleX(
		by xScale: CGFloat,
		y yScale: CGFloat,
		duration: TimeInterval,
		springDamping: CGFloat,
		initialSpringVelocity: CGFloat
	) -> SKAction {
		.group([
			animate(
				keyPath: \SKNode.xScale,
				by: xScale,
				duration: duration,
				springDamping: springDamping,
				initialSpringVelocity: initialSpringVelocity
			),
			animate(
				keyPath: \SKNode.yScale,
				by: yScale,
				duration: duration,
				springDamping: springDamping,
				initialSpringVelocity: initialSpringVelocity
			)
		])
	}
	
	static func scaleX(
		to scale: CGFloat,
		duration: TimeInterval,
		springDamping: CGFloat,
		initialSpringVelocity: CGFloat
	) -> SKAction {
		animate(
			keyPath: \SKNode.xScale,
			to: scale,
			duration: duration,
			springDamping: springDamping,
			initialSpringVelocity: initialSpringVelocity
		)
	}
	
	static func scaleY(
		to scale: CGFloat,
		duration: TimeInterval,
		springDamping: CGFloat,
		initialSpringVelocity: CGFloat
	) -> SKAction {
		animate(
			keyPath: \SKNode.yScale,
			to: scale,
			duration: duration,
			springDamping: springDamping,
			initialSpringVelocity: initialSpringVelocity
		)
	}
	
	static func scaleX(
		to xScale: CGFloat,
		y yScale: CGFloat,
		duration: TimeInterval,
		springDamping: CGFloat,
		initialSpringVelocity: CGFloat
	) -> SKAction {
		.group([
			scaleX(
				to: xScale,
				duration: duration,
				springDamping: springDamping,
				initialSpringVelocity: initialSpringVelocity
			),
			scaleY(
				to: yScale,
				duration: duration,
				springDamping: springDamping,
				initialSpringVelocity: initialSpringVelocity
			)
		])
	}
	
}
