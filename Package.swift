// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.0.4"
let checksum = "843ca2f16a39ed54ee73baed108f131ac54ad2dc224a1dfcbf69a92bc9873534"
let url = "https://github.com/Akshay898989/SSSurvey5/releases/download/0.0.4/SSSurvey5.zip"

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
