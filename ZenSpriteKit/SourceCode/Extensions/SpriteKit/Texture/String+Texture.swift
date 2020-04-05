import SpriteKit

public extension String {
	
	/// Returns a texture created using the receiver as a name.
	var texture: SKTexture {
		SKTexture(imageNamed: self)
	}
	
}
