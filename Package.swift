// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "WalletCore",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "WalletCore", targets: ["WalletCore"]),
        .library(name: "SwiftProtobuf", targets: ["SwiftProtobuf"])
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "WalletCore",
            url: "https://github.com/trustwallet/wallet-core/releases/download/2.7.6/WalletCore.xcframework.zip",
            checksum: "cc3e8691894bb416b8e484af5c26d0948e74d8eaa734817a5f39002f75d4a36b"
        ),
        .binaryTarget(
            name: "SwiftProtobuf",
            url: "https://github.com/trustwallet/wallet-core/releases/download/2.7.6/SwiftProtobuf.xcframework.zip",
            checksum: "7494c787da7e599ecd0166f9eaf7b7edfbba9c9669a6042be4abecbfd7e1ddc7"
        )
    ]
)