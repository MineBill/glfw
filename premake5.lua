project "GLFW"
   kind "StaticLib"
   language "C"
--    cppdialect "C++20"
   targetdir "Binaries/%{cfg.buildcfg}"
   staticruntime "off"

   files
   {
        "src/context.c ",
        "src/init.c ",
        "src/input.c ",
        "src/monitor.c ",
        "src/platform.c ",
        "src/vulkan.c ",
        "src/window.c",
        "src/egl_context.c ",
        "src/osmesa_context.c ",
        "src/null_platform.h ",
        "src/null_joystick.h",
        "src/null_init.c",
        "src/null_monitor.c",
        "src/null_window.c",
        "src/null_joystick.c",
        "src/wgl_context.c"
   }

   includedirs
   {
      "include",
   }

   targetdir ("../../Binaries/" .. OutputDir .. "/%{prj.name}")
   objdir ("../../Binaries/Intermediates/" .. OutputDir .. "/%{prj.name}")

   filter "system:windows"
       systemversion "latest"
       defines { "WINDOWS", "_GLFW_WIN32" }
       files
       {
            "src/win32*.c",
            "src/win32*.h",
       }

   filter "configurations:Debug"
       defines { "DEBUG" }
       runtime "Debug"
       symbols "On"

   filter "configurations:Release"
       defines { "RELEASE" }
       runtime "Release"
       optimize "On"
       symbols "On"

   filter "configurations:Dist"
       defines { "DIST" }
       runtime "Release"
       optimize "On"
       symbols "Off"
