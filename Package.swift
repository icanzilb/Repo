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
            targets: ["RepoTest"]),
        .library(
            name: "RepoDep",
            targets: ["RepoDep"]),
    ],
    dependencies: [
        .package(url: "https://github.com/moya/moya", from: "13.0.0"),
    ],
    targets: [
        .target(
            name: "RepoTest"),
        .target(
            name: "RepoDep",
            dependencies: ["Moya"]),
    ],
    swiftLanguageVersions: [.v5]
)
