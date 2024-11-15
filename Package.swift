// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.14.1-185-gf41e807277"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.14.1-185-gf41e807277/BNBHealth.zip",
            checksum: "38e3f55090da888e67a7ba6725d7a0a3f889c88bc0754c4b4cb3324887ab22b9"
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
