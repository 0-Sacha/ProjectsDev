
project "Sandbox"
	kind "ConsoleApp"
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
	
	Solution.IncludeAndLinkProject("ProjectCore")

	if CurrentProjectDev == "Spitfire" or CurrentProjectDev == "ProjectCoreModules" then
		Solution.IncludeAndLinkProject("Spirfire")
	end
	if CurrentProjectDev == "ProjectCoreModules" then
		Solution.IncludeAndLinkProject("ProjectCoreModules")
	end
	if CurrentProjectDev == "LittleECS" then
		Solution.IncludeAndLinkProject("LittleECS")
	end
	