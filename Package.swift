// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "sqlite-kit",
    platforms: [
       .macOS(.v10_14)
    ],
    products: [
        .library(name: "SQLiteKit", targets: ["SQLiteKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/sqlite-nio.git", from: "1.0.0-beta.2"),
        .package(url: "https://github.com/vapor/sql-kit.git", from: "3.0.0-beta.2"),
        .package(url: "https://github.com/vapor/async-kit.git", from: "1.0.0-beta.2"),
    ],
    targets: [
        .target(name: "SQLiteKit", dependencies: [
            "AsyncKit",
            "SQLiteNIO",
            "SQLKit"
        ]),
        .testTarget(name: "SQLiteKitTests", dependencies: ["SQLKitBenchmark", "SQLiteKit"]),
    ]
)
