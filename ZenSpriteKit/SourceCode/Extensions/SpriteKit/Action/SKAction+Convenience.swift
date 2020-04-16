import SpriteKit

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
