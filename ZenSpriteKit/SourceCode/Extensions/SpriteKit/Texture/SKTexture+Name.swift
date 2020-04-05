import SpriteKit

public extension SKTexture {
	
	/// Returns a name of texture, if it possible.
	var name: String?  {
		guard let substring = description.split(separator: "'")[safe: 1] else {
			return nil
		}
		return String(substring)
	}
	
}
