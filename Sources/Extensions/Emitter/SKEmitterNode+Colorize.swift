import SpriteKit

public extension SKEmitterNode {
	
	/// Fill emitter particles with color and set color blend factor 1.
	func fillParticles(with color: SKColor) {
		particleColorSequence = nil
		particleColorBlendFactor = 1
		particleColor = color
	}
	
}
