project "STB"
	kind "StaticLib"
	language "C++"

	targetdir ("%{wks.location}/dependencies/libs/%{prj.name}")
	objdir ("%{wks.location}/dependencies/libs/%{prj.name}")

	files
	{
		"*.h",
		"stb_image.cpp"
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"