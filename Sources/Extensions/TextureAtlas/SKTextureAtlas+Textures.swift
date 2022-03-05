import SpriteKit

public extension SKTextureAtlas {
	
	/// Returns textures stored in the atlas.
	var textures: [SKTexture] {
		textureNames.map {
			textureNamed($0)
		}
	}
	
}
