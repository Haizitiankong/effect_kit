// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "EffectOneKitTest",
  platforms: [.iOS(.v13)],
  products: [
    .library(name: "EffectOneKitTest", targets: ["EffectOneKitTest"]),
  ],
  dependencies: [
    .package(url: "https://github.com/Haizitiankong/effect_test_one.git", exact: "1.0.0")
  ],
  targets: [
    .target(
      name: "EffectOneKitTest",
      dependencies: [.product(name: "EffectOneKit", package: "effect_test_one")],
      path: "Source",
      publicHeadersPath: ""
    )
  ]
)