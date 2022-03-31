// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "WalletCore",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "WalletCore", targets: ["WalletCore"]),
        .library(name: "SwiftProtobuf", targets: ["WalletCore"])
    ],
    dependencies: [
 .package(
      name: "SwiftProtobuf",
      url: "https://github.com/apple/swift-protobuf.git",
      "1.15.0" ..< "2.0.0"
    )],
    targets: [
        .binaryTarget(
            name: "WalletCore",
            url: "https://github.com/trustwallet/wallet-core/releases/download/2.7.2/WalletCore.xcframework.zip",
            checksum: "391d8ddb3232248510bf69116a03927bef6f9520758226c4a6878117709a0251"
        )
    ]
)



