import SpriteKit
import ZenSwift

// MARK: - Static

public extension SKAction {
	
	/// Returns an empty action.
	static var empty: SKAction {
		SKAction()
	}
	
	/**
	Returns an action that removes the node from its parent after specified delay.
	- parameter delay: The amount of time to wait (in seconds).
	*/
	static func removeFromParentAfterDelay(
		_ delay: TimeInterval
	) -> SKAction {
		.sequence([
			.wait(forDuration: delay),
			.removeFromParent()
		])
	}
	
}

// MARK: - Instance

public extension SKAction {
	
	/// Returns the receiver with specified timing mode 'easeInEaseOut'.
	var easeInEaseOut: SKAction {
		timingMode = .easeInEaseOut
		return self
	}
	
	/// Returns the receiver with specified timing mode 'easeIn'.
	var easeIn: SKAction {
		timingMode = .easeIn
		return self
	}
	
	/// Returns the receiver with specified timing mode 'easeOut'.
	var easeOut: SKAction {
		timingMode = .easeOut
		return self
	}
	
	/// Returns the sequence consisting of the receiver and its reverse action.
	var pulse: SKAction {
		.sequence([self, reversed()])
	}
	
	/// Returns an endless repetition of the receiver.
	var infinite: SKAction {
		.repeatForever(self)
	}
	
	/// Returns an endless repetition of the sequence consisting of the receiver and its reverse action.
	var infinitePulse: SKAction {
		.repeatForever(pulse)
	}
	
	/**
	Creates a rectangle with the given center and dimensions.
	- parameter duration: The duration of one revolution (in seconds)
	- parameter isClockwise: The direction of rotation
	*/
	static func rotateInfinite(
		turnover duration: TimeInterval,
		isClockwise: Bool = false
	) -> SKAction {
		.rotate(
			byAngle: 360.radians * (isClockwise ? -1 : 1),
			duration: duration
		).infinite
	}
	
}
