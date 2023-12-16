workspace "Physics"
   architecture "x64"
   configurations { "Debug", "Release", "Dist" }
   startproject "Physics-Runtime"

   -- Workspace-wide build options for MSVC
   filter "system:windows"
      buildoptions { "/EHsc", "/Zc:preprocessor", "/Zc:__cplusplus" }

OutputDir = "%{cfg.system}-%{cfg.architecture}/%{cfg.buildcfg}"

group "Physics-Core"
	include "Physics-Core/Build-Core.lua"
group ""

include "Physics-Runtime/Build-App.lua"