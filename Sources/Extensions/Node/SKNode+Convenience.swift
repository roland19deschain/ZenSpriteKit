import SpriteKit

public extension SKNode {
	
	/// Returns an empty node.
	static var empty: SKNode {
		SKNode()
	}
	
	/**
	 Appends an array of nodes to the end of the receiver’s list of child nodes.
	 - parameter nodes: A nodes to add to the receiver.
	 */
	func addChildren(_ nodes: [SKNode]) {
		nodes.forEach {
			addChild($0)
		}
	}
	
}
