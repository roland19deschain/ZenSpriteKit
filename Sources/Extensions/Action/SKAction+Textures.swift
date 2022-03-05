import SpriteKit

public extension SKAction {
	
	/**
	Creates an action that infinite animates changes to a sprite’s texture, possibly resizing the sprite.
	- parameter textures: An array of textures to use when animating a spriteю
	- parameter timePerFrame: The amount of time that each texture is displayed.
	- parameter resize: If true, the sprite is resized to match each new texture.
	If false, the size of the sprite remains at a constant size
	- parameter restore:
	- If true when the action completes, the sprite’s texture is restored
	to the texture it had before the action completed
	(If the resize parameter is true, the sprite is resized to match the size of the original texture).
	- If false, when the action completes the sprite’s texture remains set to the final texture in the array.
	- returns: A new action object.
	*/
	static func infiniteAnimate(
		_ textures: [SKTexture],
		timePerFrame: TimeInterval = 1 / 60,
		resize: Bool = false,
		restore: Bool = false
	) -> SKAction {
		SKAction.animate(
			with: textures,
			timePerFrame: timePerFrame,
			resize: resize,
			restore: restore
		).infinite
	}
	
	/**
	Creates an action that infinite animates changes to a sprite’s texture, possibly resizing the sprite.
	- parameter textures: An array of textures to use when animating a spriteю
	- parameter timePerFrame: The amount of time that each texture is displayed.
	- parameter resize: If true, the sprite is resized to match each new texture.
	If false, the size of the sprite remains at a constant size
	- parameter restore:
	- If true when the action completes, the sprite’s texture is restored
	to the texture it had before the action completed
	(If the resize parameter is true, the sprite is resized to match the size of the original texture).
	- If false, when the action completes the sprite’s texture remains set to the final texture in the array.
	- returns: A new action object.
	*/
	static func animate(
		_ textures: [SKTexture],
		timePerFrame: TimeInterval = 1 / 60,
		resize: Bool = false,
		restore: Bool = false
	) -> SKAction {
		.animate(
			with: textures,
			timePerFrame: timePerFrame,
			resize: resize,
			restore: restore
		)
	}
	
}
