import SpriteKit

@MainActor public extension String {
	
	/// Returns an emitter node created using the receiver as a *file name*.
	var emitter: SKEmitterNode? {
		SKEmitterNode(fileNamed: self)
	}
	
}
