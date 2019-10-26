project "glfw"
    kind "StaticLib"
    language "C"
    staticruntime "on"

    files {
        "include/GLFW/glfw3.h",
        "include/GLFW/glfw3native.h",
        "src/glfw_config.h",
        "src/context.c",
        "src/init.c",
        "src/input.c",
        "src/monitor.c",
        "src/vulkan.c",
        "src/window.c"
    }

    includedirs {
        "include"
    }

    defines {
        "_GLFW_WIN32"
    }

    filter "configurations:Debug"
        runtime "Debug"
        symbols "On"

    filter "configurations:Release"
        runtime "Release"    
        optimize "On"
