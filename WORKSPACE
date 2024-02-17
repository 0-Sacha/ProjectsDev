# WORKSPACE

workspace(name = "ProjectDev")

load("//BazelUtilities:hosts.bzl", "filter_hosts_name")
load("//BazelUtilities/toolchains/MinGW:MinGW.bzl", "MinGW_deps", "mingw_gcc_toolchain")

MinGW_deps()
mingw_gcc_toolchain.register()
