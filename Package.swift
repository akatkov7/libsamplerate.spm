// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Clibsamplerate",
    products: [
        .library(
            name: "Clibsamplerate",
            targets: ["Clibsamplerate"]
        ),
    ],
    targets: [
        .target(
            name: "Clibsamplerate",
            dependencies: [],
            path: "src",
            cSettings: [
                .define("HAVE_STDBOOL_H"),
                .define("PACKAGE", to: "\"libsamplerate\""),
                .define("VERSION", to: "\"0.2.2\"")
            ]
        )
    ],
    cxxLanguageStandard: CXXLanguageStandard.cxx11
)
