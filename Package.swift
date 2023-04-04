// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "libsamplerate.spm",
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
            cSettings: [
                .define("HAVE_STDBOOL_H"),
                .define("ENABLE_SINC_BEST_CONVERTER"),
                .define("ENABLE_SINC_MEDIUM_CONVERTER"),
                .define("ENABLE_SINC_FAST_CONVERTER"),
                .define("PACKAGE", to: "\"libsamplerate\""),
                .define("VERSION", to: "\"0.2.2\""),
                .unsafeFlags(["-Os"])
            ]
        )
    ],
    cxxLanguageStandard: CXXLanguageStandard.cxx11
)
