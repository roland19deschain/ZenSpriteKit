import SpriteKit

public extension SKNode {
	
	/**
	 Apply closure to every node in the receiver children tree
	 (If the enumeration will be not interrupted earlier by setting of the boolean flag _stop_ to *true*).
	 - parameter closure: The block for applying to child nodes.
	 */
	func recursivelyEnumerateChildren(
		using closure: (SKNode, UnsafeMutablePointer<ObjCBool>) -> Void
	) {
		let capacity: Int = MemoryLayout<ObjCBool>.size
		let stop: UnsafeMutablePointer<ObjCBool> = .allocate(capacity: capacity)
		stop.initialize(to: ObjCBool(false))
		
		defer {
			stop.deinitialize(count: capacity)
			stop.deallocate()
		}
		
		for child in children {
			guard !stop.pointee.boolValue else {
				break
			}
			
			closure(child, stop)
			
			child.recursivelyEnumerateChildren(
				using: closure,
				stop: stop
			)
		}
	}
	
}

private extension SKNode {
	
	func recursivelyEnumerateChildren(
		using closure: (SKNode, UnsafeMutablePointer<ObjCBool>) -> Void,
		stop: UnsafeMutablePointer<ObjCBool>
	) {
		for child in children {
			guard !stop.pointee.boolValue else {
				break
			}
			
			closure(child, stop)
			
			child.recursivelyEnumerateChildren(
				using: closure,
				stop: stop
			)
		}
	}
	
}
