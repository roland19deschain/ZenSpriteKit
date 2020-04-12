import SpriteKit

public extension SKNode {
	
	/**
	Places a non-endless emitter on receiver and run an action that will remove it after the end of its action.
	Also resets emitters simulation.
	- parameter splash: A non-endless emitter to be placed on receiver.
	- parameter target: The target node that renders the *splash*’s particles.
	*/
	func place(
		splash emitterNode: SKEmitterNode,
		target: SKNode? = nil
	) {
		guard emitterNode.parent == nil else {
			return
		}
		emitterNode.resetSimulation()
		
		if target != nil {
			emitterNode.targetNode = target
		}
		
		addChild(emitterNode)
		
		emitterNode.run(
			.sequence([
				.wait(forDuration: emitterNode.duration),
				.removeFromParent()
			])
		)
	}
	
}
