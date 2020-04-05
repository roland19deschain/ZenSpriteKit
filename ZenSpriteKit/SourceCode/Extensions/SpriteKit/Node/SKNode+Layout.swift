import SpriteKit

public extension SKNode {
	
	/**
	Bind nodes position to receiver position via constraint.
	- parameter node: The node whose position will now coincide with the receiver.
	*/
	func bind(to node: SKNode) {
		constraints = [
			.distance(.zero, to: node)
		]
	}
	
}
