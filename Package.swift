// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.14.1-214-g5030d169c2"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.14.1-214-g5030d169c2/BNBHealth.zip",
            checksum: "047825f713cd9beaa48c915ceec60c23947e9a51e248a34595c77c04e4c54402"
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
