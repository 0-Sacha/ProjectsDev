
Solution.Projects["Sandbox"].ProjectDependencies = { "ProjectCore" }

if CurrentProjectDev == "Spitfire" or CurrentProjectDev == "ProjectCoreModules" then
	table.insert(Solution.Projects["Sandbox"].ProjectDependencies, "Spitfire")
end
if CurrentProjectDev == "ProjectCoreModules" then
	table.insert(Solution.Projects["Sandbox"].ProjectDependencies, "ProjectCoreModules")
end
if CurrentProjectDev == "LittleECS" then
	table.insert(Solution.Projects["Sandbox"].ProjectDependencies, "LittleECS")
end

project "Sandbox"
	kind 		(Solution.Projects["Sandbox"].Type)
	language "C++"
	cppdialect "C++20"

	targetdir 	(Solution.Path.ProjectTargetDirectory)
	objdir 		(Solution.Path.ProjectObjectDirectory)

	files {
		"src/**.h",
		"src/**.hpp",
		"src/**.inl",
		"src/**.cpp",
	}
	
	Solution.Project("Sandbox")


SandboxLaunch = {}
SandboxLaunch.Project = "Sandbox"
SandboxLaunch.BuildCfg = "Debug"
SandboxLaunch.Platform = "x64"
SandboxLaunch.PreLaunchTask = "DEBUGx64 build"
SandboxLaunch.Args = { "test.json" }
Solution.Launch["Sandbox"] = SandboxLaunch
