import SpriteKit

public extension SKAction {
	
	static func move(
		by delta: CGVector,
		duration: TimeInterval,
		springDamping: CGFloat,
		initialSpringVelocity: CGFloat
	) -> SKAction {
		.group([
			animate(
				keyPath: \SKNode.position.x,
				by: delta.dx,
				duration: duration,
				springDamping: springDamping,
				initialSpringVelocity: initialSpringVelocity
			),
			animate(
				keyPath: \SKNode.position.y,
				by: delta.dy,
				duration: duration,
				springDamping: springDamping,
				initialSpringVelocity: initialSpringVelocity
			)
		])
	}
	
	static func move(
		to location: CGPoint,
		duration: TimeInterval,
		springDamping: CGFloat,
		initialSpringVelocity: CGFloat
	) -> SKAction {
		.group([
			animate(
				keyPath: \SKNode.position.x,
				to: location.x,
				duration: duration,
				springDamping: springDamping,
				initialSpringVelocity: initialSpringVelocity
			),
			animate(
				keyPath: \SKNode.position.y,
				to: location.y,
				duration: duration,
				springDamping: springDamping,
				initialSpringVelocity: initialSpringVelocity
			)
		])
	}
	
	static func moveBy(
		x deltaX: CGFloat,
		y deltaY: CGFloat,
		duration: TimeInterval,
		springDamping: CGFloat,
		initialSpringVelocity: CGFloat
	) -> SKAction {
		.group([
			animate(
				keyPath: \SKNode.position.x,
				by: deltaX,
				duration: duration,
				springDamping: springDamping,
				initialSpringVelocity: initialSpringVelocity
			),
			animate(
				keyPath: \SKNode.position.y,
				by: deltaY,
				duration: duration,
				springDamping: springDamping,
				initialSpringVelocity: initialSpringVelocity
			)
		])
	}
	
	static func moveTo(
		x: CGFloat,
		duration: TimeInterval,
		springDamping: CGFloat,
		initialSpringVelocity: CGFloat
	) -> SKAction {
		animate(
			keyPath: \SKNode.position.x,
			to: x,
			duration: duration,
			springDamping: springDamping,
			initialSpringVelocity: initialSpringVelocity
		)
	}
	
	static func moveTo(
		y: CGFloat,
		duration: TimeInterval,
		springDamping: CGFloat,
		initialSpringVelocity: CGFloat
	) -> SKAction {
		animate(
			keyPath: \SKNode.position.y,
			to: y,
			duration: duration,
			springDamping: springDamping,
			initialSpringVelocity: initialSpringVelocity
		)
	}
	
}
