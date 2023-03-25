workspace "ProjectsDev"
	platforms { "x64", "x86" }
	configurations { "Debug", "Release", "Dist" }

	startproject "Sandbox"

	flags "MultiProcessorCompile"


include "PremakeUtilities/Utilities.lua"

CurrentProjectDev = "--"
ProjectCoreTestsEnable = true
LittleECSTestsEnable = true

-- Include directories relative to WKS
Solution.Name  = "ProjectsDev"
Solution.Projects["ProjectCore"] 			= "%{wks.location}/ProjectCore/"

if CurrentProjectDev == "Spitfire" or CurrentProjectDev == "ProjectCoreModules" then
	Solution.Projects["Spirfire"] 			= "%{wks.location}/Spirfire/"
end
if CurrentProjectDev == "ProjectCoreModules" then
	Solution.Projects["ProjectCoreModules"] = "%{wks.location}/ProjectCoreModules/"
end
if CurrentProjectDev == "LittleECS" or LittleECSTestsEnable == true then
	Solution.Projects["LittleECS"] 			= "%{wks.location}/LittleECS/"
end

Solution.Projects["Sandbox"] 				= "%{wks.location}/Sandbox/"


include "ProjectCore"

if CurrentProjectDev == "Spitfire" or CurrentProjectDev == "ProjectCoreModules" then
	include "Spirfire"
end
if CurrentProjectDev == "ProjectCoreModules" then
	include "ProjectCoreModules"
end
if CurrentProjectDev == "LittleECS" or LittleECSTestsEnable == true then
	include "LittleECS"
end

include "Sandbox"
