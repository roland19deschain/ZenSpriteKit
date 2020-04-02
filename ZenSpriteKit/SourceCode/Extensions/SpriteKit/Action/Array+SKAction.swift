import SpriteKit

extension Array where Element == SKAction {
	
	/// Returns the group action created from the receiver.
	var group: SKAction {
		.group(self)
	}
	
	/// Returns the sequence action created from the receiver.
	var sequence: SKAction {
		.sequence(self)
	}
	
}
