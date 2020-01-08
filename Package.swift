// swift-tools-version:5.1

import PackageDescription

let package = Package(
  name: "S3",
  platforms: [.iOS(.v13)],
  products: [
      .library(name: "S3", targets: ["S3"]),
  ],
  dependencies: [
      .package(url: "https://github.com/evenlyio/aws-sdk-swift-core.git", .branch("develop"))
  ],
  targets: [
    .target(name: "S3", dependencies: ["AWSSDKSwiftCore", "S3Middleware"]),
    .target(name: "S3Middleware", dependencies: ["AWSSDKSwiftCore"]),
  ]
)
