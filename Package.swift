// swift-tools-version:6.0

import PackageDescription

let package = Package(
	name: "ZenSpriteKit",
	platforms: [
		.iOS(.v14),
		.tvOS(.v14),
		.macOS(.v10_13),
		.watchOS(.v4)
	],
	products: [
		.library(
			name: "ZenSpriteKit",
			type: .static,
			targets: ["ZenSpriteKit"]
		)
	],
	dependencies: [
		.package(url: "https://github.com/roland19deschain/ZenSwift.git", from: "2.1.13")
	],
	targets: [
		.target(
			name: "ZenSpriteKit",
			dependencies: [
				.product(name: "ZenSwift", package: "zenswift")
			],
			path: "Sources/"
		),
		.testTarget(
			name: "ZenSpriteKitTests",
			dependencies: ["ZenSpriteKit"],
			path: "Tests/"
		),
	],
	swiftLanguageModes: [.v6]
)
