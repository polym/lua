# Install script for directory: /heka/build/ep_base/Build/lua_sandbox/ep_base/Source/lua-5_1_5

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/heka/build/ep_base/Build/lua_sandbox/ep_base")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Runtime")
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libluasb.so.5.1.5.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libluasb.so.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libluasb.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/heka/build/ep_base/Build/lua_sandbox/ep_base/Build/lua-5_1_5/libluasb.so.5.1.5.1"
    "/heka/build/ep_base/Build/lua_sandbox/ep_base/Build/lua-5_1_5/libluasb.so.0"
    "/heka/build/ep_base/Build/lua_sandbox/ep_base/Build/lua-5_1_5/libluasb.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libluasb.so.5.1.5.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libluasb.so.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libluasb.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Header")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/luasandbox" TYPE FILE FILES "/heka/build/ep_base/Build/lua_sandbox/ep_base/Source/lua-5_1_5/src/lua.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Header")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/luasandbox" TYPE FILE FILES "/heka/build/ep_base/Build/lua_sandbox/ep_base/Source/lua-5_1_5/src/lualib.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Header")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/luasandbox" TYPE FILE FILES "/heka/build/ep_base/Build/lua_sandbox/ep_base/Source/lua-5_1_5/src/lauxlib.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Header")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/luasandbox" TYPE FILE FILES "/heka/build/ep_base/Build/lua_sandbox/ep_base/Source/lua-5_1_5/etc/lua.hpp")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Header")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/luasandbox" TYPE FILE FILES "/heka/build/ep_base/Build/lua_sandbox/ep_base/Build/lua-5_1_5/luaconf.h")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

file(WRITE "/heka/build/ep_base/Build/lua_sandbox/ep_base/Build/lua-5_1_5/${CMAKE_INSTALL_MANIFEST}" "")
foreach(file ${CMAKE_INSTALL_MANIFEST_FILES})
  file(APPEND "/heka/build/ep_base/Build/lua_sandbox/ep_base/Build/lua-5_1_5/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
endforeach()
