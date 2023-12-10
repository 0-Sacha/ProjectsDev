workspace "ProjectsDev"
	platforms { "x64", "x86" }
	configurations { "Debug", "Release", "Dist" }

	startproject "Sandbox"

	flags "MultiProcessorCompile"

include "PremakeUtilities/Utilities.lua"

CurrentProjectDev = "Spitfire"
ProjectCoreTestsEnable = true
LittleECSTestsEnable = true
DISABLE_FILE_LOCATION = true

-- Include directories relative to WKS
Solution.Name  = "ProjectsDev"
Solution.AddProject("ProjectCore", "%{wks.location}/ProjectCore/")

if CurrentProjectDev == "Spitfire" or CurrentProjectDev == "ProjectCoreModules" then
	Solution.AddProject("Spitfire", "%{wks.location}/Spitfire/")
end
if CurrentProjectDev == "ProjectCoreModules" then
	Solution.AddProject("ProjectCoreModules", "%{wks.location}/ProjectCoreModules/")
end
if CurrentProjectDev == "LittleECS" or LittleECSTestsEnable == true then
	Solution.AddProject("LittleECS", "%{wks.location}/LittleECS/")
end

Solution.AddProject("Sandbox", "%{wks.location}/Sandbox/")

include "ProjectCore"
if CurrentProjectDev == "Spitfire" or CurrentProjectDev == "ProjectCoreModules" then
	include "Spitfire"
end
if CurrentProjectDev == "ProjectCoreModules" then
	include "ProjectCoreModules"
end
if CurrentProjectDev == "LittleECS" or LittleECSTestsEnable == true then
	include "LittleECS"
end
include "Sandbox"

Solution.End()
