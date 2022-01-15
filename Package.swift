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
            url: "https://github.com/trustwallet/wallet-core/releases/download/2.7.2/WalletCore.xcframework.zip",
            checksum: "391d8ddb3232248510bf69116a03927bef6f9520758226c4a6878117709a0251"
        ),
        .binaryTarget(
            name: "SwiftProtobuf",
            url: "https://github.com/trustwallet/wallet-core/releases/download/2.7.2/SwiftProtobuf.xcframework.zip",
            checksum: "4fbeaa7c07638eb758cec10adeb3cc33b063cdb92f35d4c1325beb46c4d124e7"
        )
    ]
)



