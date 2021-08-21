// swift-tools-version:5.3

import PackageDescription

let package = Package(
	name: "ZenSpriteKit",
	platforms: [
		.macOS(.v10_13),
		.iOS(.v12),
		.tvOS(.v12),
		.watchOS(.v4)
	],
	products: [
		.library(
			name: "ZenSpriteKit",
			type: .static,
			targets: ["ZenSpriteKit"]
		)
	],
	dependencies: [],
	targets: [
		.target(
			name: "ZenSpriteKit",
			dependencies: [],
			path: "ZenSpriteKit/SourceCode/"
		)
	]
)
