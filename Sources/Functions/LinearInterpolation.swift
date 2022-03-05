import CoreGraphics

/**
 Calculates the linear interpolation between a minimum and a maximum value.
 - parameter fraction: The input value. Typically in the range `from...to`
 - parameter from: The minimum value.
 - parameter to: The maximum value.
 - returns: The weighting of *fraction* between *from* and *to*. Typically in the range `0...1`.
 */
func lerp(
	from: CGFloat,
	to: CGFloat,
	fraction: CGFloat
) -> CGFloat {
	(to - from) * fraction + from
}
