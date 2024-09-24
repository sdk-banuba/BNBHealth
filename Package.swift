// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.14.1-143-g50b5f987b"

let package = Package(
    name: "BNBHealth",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "BNBHealth",
            targets: [
                "BNBHealth",
                "BNBHealth_BNBSdkCore",
                "BNBHealth_BNBEffectPlayer",
                "BNBHealth_BNBScripting",
                "BNBHealth_BNBLips"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sdk-banuba/BNBSdkCore.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBEffectPlayer.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBScripting.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBLips.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "BNBHealth",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.14.1-143-g50b5f987b/BNBHealth.zip",
            checksum: "789221355753ced2a269e0555252fa092cf2f93245030dd6a8ca1a1c8438b8b3"
        ),
        .target(
            name: "BNBHealth_BNBSdkCore",
            dependencies: [
                .product(
                    name: "BNBSdkCore",
                    package: "BNBSdkCore"
                ),
            ]
        ),
        .target(
            name: "BNBHealth_BNBEffectPlayer",
            dependencies: [
                .product(
                    name: "BNBEffectPlayer",
                    package: "BNBEffectPlayer"
                ),
            ]
        ),
        .target(
            name: "BNBHealth_BNBScripting",
            dependencies: [
                .product(
                    name: "BNBScripting",
                    package: "BNBScripting"
                ),
            ]
        ),
        .target(
            name: "BNBHealth_BNBLips",
            dependencies: [
                .product(
                    name: "BNBLips",
                    package: "BNBLips"
                ),
            ]
        ),
    ]
)
