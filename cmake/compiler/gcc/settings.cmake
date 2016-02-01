# Set build-directive (used in core to tell which buildtype we used)
add_definitions(-D_BUILD_DIRECTIVE=${CMAKE_BUILD_TYPE})

if( USE_SFMT)
  if(PLATFORM EQUAL 32)
    # Required on 32-bit systems to enable SSE2 (standard on x64)
    add_definitions(-msse2 -mfpmath=sse)
  endif()
  add_definitions(-DHAVE_SSE2 -D__SSE2__)
  message(STATUS "GCC: SFMT enabled, SSE2 flags forced")
endif()

if( WITH_WARNINGS )
  add_definitions(-Wall -Wfatal-errors -Wextra)
  message(STATUS "GCC: All warnings enabled")
else()
  add_definitions(--no-warnings)
  message(STATUS "GCC: All warnings disabled")
endif()

if( WITH_COREDEBUG )
  add_definitions(-ggdb -g3 -O0)
  message(STATUS "GCC: Debug-flags set (-ggdb -g3)")
else()
  add_definitions(-O3)
endif()
