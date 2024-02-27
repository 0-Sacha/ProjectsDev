"Wait for Bazelv8 for a more convenient way; this should not exist"

load("//BazelUtilities/solutions:solutions.bzl", "solution_project_info")
load("//ProjectCore:project.bzl", "info_ProjectCore")

# buildifier: disable=name-conventions
info_Sandbox = solution_project_info(
    name = "Sandbox",
    copts = [ "-std=c++20" ],
    project_deps = [ info_ProjectCore ],
    platform_define_name = "SB",
)
