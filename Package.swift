// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

#if os(macOS)
/// MacOS swiftymocky mackage
let package = Package(
   name: "swiftymocky",
   products: [
       .library(name: "SwiftyMocky", targets: ["SwiftyMocky"]),
   ],
   targets: [
       .target(
           name: "SwiftyMocky",
           path: "./Sources/Classes"
           ),
   ]
)
#else
/// Linux package. For now not really usable, until sourcery would be available too
let package = Package(
    name: "swiftymocky",
    products: [
        .library(name: "SwiftyMocky", targets: ["SwiftyMocky"]),
    ],
    targets: [
        .target(
            name: "SwiftyMocky",
            path: "./Sources/Classes"),
    ]
)
#endif
