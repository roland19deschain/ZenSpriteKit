import SpriteKit

public extension String {
	
	/// Returns an texture atlas created using the receiver as a *file name*.
	var textureAtlas: SKTextureAtlas {
		SKTextureAtlas(named: self)
	}
	
}
