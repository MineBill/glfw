project "glfw"
    kind "StaticLib"
    language "C++"

    files {
        "include/GLFW/glfw3.h",
        "include/GLFW/glfw3native.h",
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

    filter "configurations:Debug"
        symbols "On"

    filter "configurations:Release"
        optimize "On"
