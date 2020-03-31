import SpriteKit

public extension SKAction {
	
	/// Returns an endless repetition of the receiver.
	var infinite: SKAction {
		.repeatForever(self)
	}
	
	/// Returns an endless repetition of the sequence consisting of the receiver and its reverse action.
	var infinitePulse: SKAction {
		.repeatForever(pulse)
	}
	
	/**
	Creates a rectangle with the given center and dimensions.
	- parameter duration: The duration of one revolution  (in seconds)
	- parameter isClockwise: The direction of rotation
	*/
	static func rotateInfinite(
		turnover duration: TimeInterval,
		isClockwise: Bool = false
	) -> SKAction
	{
		SKAction.rotate(
			byAngle: 360.radians * (isClockwise ? -1 : 1),
			duration: duration
		).infinite
	}
	
}
