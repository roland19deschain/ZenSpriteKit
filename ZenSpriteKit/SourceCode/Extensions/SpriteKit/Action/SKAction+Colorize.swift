import SpriteKit

public extension SKAction {
	
	/**
	Creates an action that colorize instance of SKShapeNode (both stroke and fill colors).
	- parameter from: The starting color for the shape node.
	- parameter to: The new color for the shape node.
	- parameter duration: The duration of the action, in seconds.
	*/
	static func colorizeShape(
		from: SKColor,
		to: SKColor,
		duration: TimeInterval
	) -> SKAction {
		var (fr, fg, fb, fa) = (CGFloat(0), CGFloat(0), CGFloat(0), CGFloat(0))
		var (tr, tg, tb, ta) = (CGFloat(0), CGFloat(0), CGFloat(0), CGFloat(0))
		
		from.getRed(&fr, green: &fg, blue: &fb, alpha: &fa)
		to.getRed(&tr, green: &tg, blue: &tb, alpha: &ta)
		
		return .customAction(
			withDuration: duration
		) { node, elapsedTime in
			guard let shapeNode = node as? SKShapeNode else {
				return
			}
			let fraction = CGFloat(elapsedTime / CGFloat(duration))
			let currentColor = SKColor(
				red: lerp(from: fr, to: tr, fraction: fraction),
				green: lerp(from: fg, to: tg, fraction: fraction),
				blue: lerp(from: fb, to: tb, fraction: fraction),
				alpha: lerp(from: fa, to: ta, fraction: fraction)
			)
			shapeNode.fillColor = currentColor
			shapeNode.strokeColor = currentColor
		}
	}
	
	/**
	Creates an action that colorize instance of SKLabelNode.
	- parameter from: The starting color for the label node.
	- parameter to: The new color for the label node.
	- parameter duration: The duration of the action, in seconds.
	*/
	static func colorizeLabel(
		from: SKColor,
		to: SKColor,
		duration: TimeInterval
	) -> SKAction {
		var (fr, fg, fb, fa) = (CGFloat(0), CGFloat(0), CGFloat(0), CGFloat(0))
		var (tr, tg, tb, ta) = (CGFloat(0), CGFloat(0), CGFloat(0), CGFloat(0))
		
		from.getRed(&fr, green: &fg, blue: &fb, alpha: &fa)
		to.getRed(&tr, green: &tg, blue: &tb, alpha: &ta)
		
		return .customAction(
			withDuration: duration
		) { node, elapsedTime in
			guard let labelNode = node as? SKLabelNode else {
				return
			}
			let fraction = CGFloat(elapsedTime / CGFloat(duration))
			let currentColor = SKColor(
				red: lerp(from: fr, to: tr, fraction: fraction),
				green: lerp(from: fg, to: tg, fraction: fraction),
				blue: lerp(from: fb, to: tb, fraction: fraction),
				alpha: lerp(from: fa, to: ta, fraction: fraction)
			)
			
			if let attributedText = labelNode.attributedText {
				let mutableAttributedText = NSMutableAttributedString(
					attributedString: attributedText
				)
				let range = NSRange(
					location: 0,
					length: mutableAttributedText.length
				)
				mutableAttributedText.addAttribute(
					.foregroundColor,
					value: currentColor,
					range: range
				)
				labelNode.attributedText = mutableAttributedText
			} else {
				labelNode.fontColor = currentColor
			}
		}
	}
	
}
