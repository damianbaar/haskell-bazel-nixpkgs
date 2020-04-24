# Set all target’s visibility in this package to "public".
package(default_visibility = ["//visibility:public"])

# Load rules_haskell rules.
load(
    "@rules_haskell//haskell:defs.bzl",
    "haskell_binary",
    "haskell_repl",
    "haskell_library",
    "haskell_toolchain_library",
)

# haskell_toolchain_library can access builtin GHC packages
# and assign them a bazel target name, so that they
# can be referenced as dependencies.
haskell_toolchain_library(name = "base")

# You can add your own libraries with haskell_library.
# haskell_library(
#     name = "MY_LIBRARY_NAME",
#     src_strip_prefix = "src",
#     srcs = glob(['src/**/*.hs']),
#     deps = [
#         "base_pkg"
#     ],
# )

# An example binary using the Prelude module from the
# GHC base package, to print the hello world.
haskell_library(
    name = "TestLib",
    srcs = glob(["src/*.hs"]),
    src_strip_prefix = "src",
    deps = [
        ":base",
        "@stackage//:lens",
    ],
)
