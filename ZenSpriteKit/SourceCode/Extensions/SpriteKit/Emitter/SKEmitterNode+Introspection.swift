import SpriteKit

public extension SKEmitterNode {
	
	/// Returns the maximum possible lifetime of a particle
	/// (considering range of allowed random values for a particle’s lifetime).
	var lifeTime: CGFloat {
		particleLifetime + particleLifetimeRange / 2
	}
	
	/// Returns the time required to emit all particles (if the emitter is not endless).
	var duration: TimeInterval {
		TimeInterval(
			CGFloat(numParticlesToEmit) / particleBirthRate + lifeTime
		)
	}
	
}
