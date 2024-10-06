// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "XCStringsLintPlugin",
    products: [
        .plugin(
            name: "XCStringsLintPlugin",
            targets: ["XCStringsLintBuildPlugin"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "xcstringslint",
            url: "https://github.com/nicorichard/xcstringslint/releases/download/0.0.4/XCStringsLint.artifactbundle.zip",
            checksum: "66249f117ee9a1469dec382156be450420de6922e553831c99e04d36a67f69d2"
        ),
        .plugin(
            name: "XCStringsLintBuildPlugin",
            capability: .buildTool(),
            dependencies: ["xcstringslint"]
        )
    ]
)
