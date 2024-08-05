// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.0.2"
let checksum = "7c4601e4e674cb081b29532c3d55af4a22d5c765224ed48766b064b332d72eae"
let url = "https://github.com/Akshay898989/SSSurvey5/releases/download/0.0.2/SSSurvey5.zip"

let package = Package(
    name: "SSSurvey5",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "SSSurvey5",
            targets: ["SSSurvey5"]),
    ],
    targets: [
        .binaryTarget(
            name: "SSSurvey5",
            url: url,
            checksum: checksum)
    ]
)
