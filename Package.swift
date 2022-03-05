// swift-tools-version:5.5

import PackageDescription

let package = Package(
	name: "ZenSpriteKit",
	platforms: [
		.iOS(.v12),
		.tvOS(.v12),
		.macOS(.v10_12),
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
		.package(url: "https://github.com/roland19deschain/ZenSwift.git", from: "2.1.0")
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
	swiftLanguageVersions: [.v5]
)
