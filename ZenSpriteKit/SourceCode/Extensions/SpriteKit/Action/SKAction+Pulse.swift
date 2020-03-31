import SpriteKit

public extension SKAction {
	
	/// Returns the sequence consisting of the receiver and its reverse action.
	var pulse: SKAction {
		.sequence([self, reversed()])
	}
	
}
