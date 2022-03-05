import SpriteKit

extension SKAction {
	
	static func animate<T>(
		keyPath: ReferenceWritableKeyPath<T, CGFloat>,
		by: CGFloat?,
		to: CGFloat?,
		duration: TimeInterval,
		springDamping: CGFloat,
		initialSpringVelocity: CGFloat
	) -> SKAction {
		guard by != nil || to != nil else {
			return .empty
		}
		
		let damping = validate(
			damping: springDamping
		)
		
		var initialValue: CGFloat?
		var naturalFrequency: CGFloat = 0
		var dampedFrequency: CGFloat = 0
		var dampingRatio: CGFloat = 0
		var finalValue: CGFloat = 0
		var fullDistance: CGFloat = 0
		
		return .customAction(
			withDuration: duration
		) { node, elapsedTime in
			guard let propertyToAnimation = node as? T else {
				return
			}
			
			if initialValue == nil {
				initialValue = propertyToAnimation[keyPath: keyPath]
				
				guard let initialValue = initialValue else {
					return
				}
				if let by = by {
					fullDistance = by
					finalValue = initialValue + by
				} else if let to = to {
					fullDistance = to - initialValue
					finalValue = to
				}
				
				var balancer: CGFloat = .leastNonzeroMagnitude
				if damping == 1 {
					balancer = 10
				} else {
					balancer = 8 / damping
				}
				
				naturalFrequency = balancer / CGFloat(duration)
				dampedFrequency = naturalFrequency * sqrt(1 - pow(damping, 2))
				
				if damping == 1 {
					dampingRatio = (naturalFrequency - initialSpringVelocity) * fullDistance
				} else {
					let multiplier = damping * naturalFrequency - initialSpringVelocity
					dampingRatio = multiplier * fullDistance / dampedFrequency
				}
			}
			
			if elapsedTime < CGFloat(duration) {
				if damping == 1 {
					let dampingExp = exp(-damping * naturalFrequency * elapsedTime)
					let multiplier = fullDistance + dampingRatio * elapsedTime
					propertyToAnimation[keyPath: keyPath] = finalValue - dampingExp * multiplier
				} else {
					let dampingExp = exp(-damping * naturalFrequency * elapsedTime)
					let a = fullDistance * cos(dampedFrequency * elapsedTime)
					let b = dampingRatio * sin(dampedFrequency * elapsedTime)
					propertyToAnimation[keyPath: keyPath] = finalValue - dampingExp * (a + b)
				}
			} else {
				propertyToAnimation[keyPath: keyPath] = finalValue
			}
		}
	}
	
}

// MARK: - Validate Damping

private extension SKAction {
	
	static func validate(damping: CGFloat) -> CGFloat {
		switch damping {
		case .ulpOfOne...1:
			return damping
		case ...0:
			return .ulpOfOne
		default:
			return 1
		}
	}
	
}
