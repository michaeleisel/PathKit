// swift-tools-version:4.2
import PackageDescription

let package = Package(
  name: "FastPathKit",
  products: [
    .library(name: "FastPathKit", targets: ["FastPathKit"]),
  ],
  dependencies: [
    .package(url:"https://github.com/michaeleisel/PathKitCExt.git", .branch("master")),
    .package(url:"https://github.com/kylef/Spectre.git", .upToNextMinor(from:"0.9.0"))
  ],
  targets: [
    .target(name: "FastPathKit", dependencies: ["PathKitCExt"], path: "Sources"),
    .testTarget(name: "PathKitTests", dependencies: ["FastPathKit", "Spectre"], path:"Tests/PathKitTests")
  ]
)
