-- glad

project "glad"
  kind "StaticLib"
  language "C"
  cdialect "gnu99"
  staticruntime "On"
  systemversion "latest"

  targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
  objdir ("%{wks.location}/build/" .. outputdir .. "%{prj.name}")

  IncludeDir["glad"] = "%{wks.location}/libs/glad/include"

  includedirs {
    "%{IncludeDir.glad}"
  }

  files {
    "premake5.lua",
    "include/glad/gl.h",
    "include/KHR/khrplatform.h",
    "src/gl.c",
  }

  filter "system:linux"
    pic "On"
  
  filter "system:macosx"
    pic "On"

  filter "configurations:Debug"
    runtime "Debug"
    symbols "On"

  filter "configurations:Release"
    runtime "Release"
    optimize "On"
