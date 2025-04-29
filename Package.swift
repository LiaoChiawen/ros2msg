// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import CompilerPluginSupport

let package = Package(
    name: "ros2msg",
    platforms: [.macOS(.v14), .iOS(.v17)], // for async/await
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ros2msg",
            targets: [
                "ROS2MsgProtocol",
                "ROS2MsgMacros",
                "ros2msg",
            ]
        ),
    ],
    dependencies: [
        // For customized macros.
        // Depend on the Swift 5.9 release of SwiftSyntax
        .package(url: "https://github.com/apple/swift-syntax.git", from: "509.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
             name: "ROS2MsgProtocol",
             path: "Sources/ROS2MsgProtocol"
        ),
        .macro(
            name: "ROS2MsgMacrosImp",
            dependencies: [
                .product(name: "SwiftSyntaxMacros", package: "swift-syntax"),
                .product(name: "SwiftCompilerPlugin", package: "swift-syntax")
            ],
            path: "Sources/ROS2MsgMacros/ROS2MsgMacrosImp"
        ),
        .target(
            name: "ROS2MsgMacros",
            dependencies: [
                "ROS2MsgProtocol",
                "ROS2MsgMacrosImp"],
            path: "Sources/ROS2MsgMacros/ROS2MsgMacros"
        ),
        .target(
            name: "ros2msg",
            dependencies: [
                "ROS2MsgProtocol",
                "ROS2MsgMacros",
            ],
//            sources: ["geometry_msgs"],
            resources: [
                .copy("Resources/ros2humble")]
        ),
        .testTarget(
            name: "ros2msgTests",
            dependencies: ["ros2msg"]),
    ]
)
