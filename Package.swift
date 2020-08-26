// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ASN1Kit",
    platforms: [
        .macOS(.v10_14), .iOS(.v12),
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "ASN1Kit",
            targets: ["ASN1Kit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SwiftCommon/DataKit", from: "1.0.0"),
        .package(url: "https://github.com/spilikin/ref-GemCommonsKit", from: "1.1.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "ASN1Kit",
            dependencies: ["DataKit", "GemCommonsKit"]),
        .testTarget(
            name: "ASN1KitTests",
            dependencies: ["ASN1Kit"]),
    ],
    swiftLanguageVersions: [.v5]
)
