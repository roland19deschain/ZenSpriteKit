import SpriteKit

public extension SKNode {
	
	/// Run action only if there is no active action for the same key.
	func tryRun(
		_ anAction: SKAction,
		withKey key: String
	) {
		guard action(forKey: key) == nil else {
			return
		}
		run(anAction, withKey: key)
	}
	
}
