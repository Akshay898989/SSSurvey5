// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.0.1"
let checksum = "5a70e65d9ba574104bbcb10760a22e53e5417ce3bf7b1888c83a715fcfa9f317"
let url = "https://github.com/Akshay898989/SSSurvey5/releases/download/0.0.1/SSSurvey5.zip"

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
