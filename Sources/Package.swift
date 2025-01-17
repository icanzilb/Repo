// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Repo",
    platforms: [
      .macOS(.v10_10),
      .iOS(.v9),
      .tvOS(.v9),
      .watchOS(.v3)
    ],
    products: [
        .library(
            name: "RepoTest",
            targets: ["RepoTest"]
        ),
    ],
    targets: [
        .target(
            name: "RepoTest",
            path: "./RepoTest"
        ),
    ],
    swiftLanguageVersions: [.v5]
)
