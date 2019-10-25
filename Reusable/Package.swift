// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
   name: "Reusable",
   platforms: [.macOS(.v10_13), .iOS(.v11), .tvOS(.v11), .watchOS(.v3)],
   products:[.library(name: "libMarkdownDataSource", targets: ["libMarkdownDataSource"])],
   targets: [.target(name: "libMarkdownDataSource", path: ".", sources: ["MarkdownDataSource"])])
