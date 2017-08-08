### CMakeLists automatically created with AutoVala
### Do not edit

set (DATADIR "${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_DATAROOTDIR}")
set (PKGDATADIR "${DATADIR}/match3")
set (GETTEXT_PACKAGE "match3")
set (RELEASE_NAME "match3")
set (CMAKE_C_FLAGS "")
set (PREFIX ${CMAKE_INSTALL_PREFIX})
set (VERSION "1.0.0")
set (TESTSRCDIR "${CMAKE_SOURCE_DIR}")
set (DOLLAR "$")

configure_file (${CMAKE_SOURCE_DIR}/src/Config.vala.base ${CMAKE_BINARY_DIR}/src/Config.vala)
add_definitions(-DGETTEXT_PACKAGE=\"${GETTEXT_PACKAGE}\")
set (VERSION "1.0.0")
add_definitions (${DEPS_CFLAGS})
link_libraries ( ${DEPS_LIBRARIES} )
link_directories ( ${DEPS_LIBRARY_DIRS} )
find_package (Vala REQUIRED)
include (ValaVersion)
ensure_vala_version ("0.34" MINIMUM)
include (ValaPrecompile)

set (VALA_PACKAGES ${VALA_PACKAGES} SDL2_image)
set (VALA_PACKAGES ${VALA_PACKAGES} SDL2_mixer)
set (VALA_PACKAGES ${VALA_PACKAGES} SDL2_ttf)
set (VALA_PACKAGES ${VALA_PACKAGES} gio-2.0)
set (VALA_PACKAGES ${VALA_PACKAGES} glib-2.0)
set (VALA_PACKAGES ${VALA_PACKAGES} gobject-2.0)
set (VALA_PACKAGES ${VALA_PACKAGES} sdl2)

set (APP_SOURCES ${APP_SOURCES} ${CMAKE_CURRENT_BINARY_DIR}/Config.vala)
set (APP_SOURCES ${APP_SOURCES} Board.vala)
set (APP_SOURCES ${APP_SOURCES} Jewel.vala)
set (APP_SOURCES ${APP_SOURCES} TweenAccessors.vala)
set (APP_SOURCES ${APP_SOURCES} components.vala)
set (APP_SOURCES ${APP_SOURCES} entitas/Group.vala)
set (APP_SOURCES ${APP_SOURCES} entitas/Matcher.vala)
set (APP_SOURCES ${APP_SOURCES} entitas/World.vala)
set (APP_SOURCES ${APP_SOURCES} entitas/entitas.vala)
set (APP_SOURCES ${APP_SOURCES} entitas/events/ComponentReplaced.vala)
set (APP_SOURCES ${APP_SOURCES} entitas/events/EntityChanged.vala)
set (APP_SOURCES ${APP_SOURCES} entitas/events/EntityReleased.vala)
set (APP_SOURCES ${APP_SOURCES} entitas/events/GroupChanged.vala)
set (APP_SOURCES ${APP_SOURCES} entitas/events/GroupUpdated.vala)
set (APP_SOURCES ${APP_SOURCES} entitas/events/GroupsChanged.vala)
set (APP_SOURCES ${APP_SOURCES} entitas/events/WorldChanged.vala)
set (APP_SOURCES ${APP_SOURCES} entity.vala)
set (APP_SOURCES ${APP_SOURCES} goop/Class.vala)
set (APP_SOURCES ${APP_SOURCES} goop/Guid.vala)
set (APP_SOURCES ${APP_SOURCES} main.vala)
set (APP_SOURCES ${APP_SOURCES} match3.vala)
set (APP_SOURCES ${APP_SOURCES} sdx/ApplicationListener.vala)
set (APP_SOURCES ${APP_SOURCES} sdx/Color.vala)
set (APP_SOURCES ${APP_SOURCES} sdx/Files.vala)
set (APP_SOURCES ${APP_SOURCES} sdx/Font.vala)
set (APP_SOURCES ${APP_SOURCES} sdx/InputMultiplexer.vala)
set (APP_SOURCES ${APP_SOURCES} sdx/InputProcessor.vala)
set (APP_SOURCES ${APP_SOURCES} sdx/Screen.vala)
set (APP_SOURCES ${APP_SOURCES} sdx/audio/Sound.vala)
set (APP_SOURCES ${APP_SOURCES} sdx/audio/audio.vala)
set (APP_SOURCES ${APP_SOURCES} sdx/exceptions.vala)
set (APP_SOURCES ${APP_SOURCES} sdx/files/FileHandle.vala)
set (APP_SOURCES ${APP_SOURCES} sdx/files/files.vala)
set (APP_SOURCES ${APP_SOURCES} sdx/graphics/BitmapFont.vala)
set (APP_SOURCES ${APP_SOURCES} sdx/graphics/Camera.vala)
set (APP_SOURCES ${APP_SOURCES} sdx/graphics/NinePatch.vala)
set (APP_SOURCES ${APP_SOURCES} sdx/graphics/Sprite.vala)
set (APP_SOURCES ${APP_SOURCES} sdx/graphics/Surface.vala)
set (APP_SOURCES ${APP_SOURCES} sdx/graphics/TextureAtlas.vala)
set (APP_SOURCES ${APP_SOURCES} sdx/graphics/TextureEnums.vala)
set (APP_SOURCES ${APP_SOURCES} sdx/graphics/TextureRegion.vala)
set (APP_SOURCES ${APP_SOURCES} sdx/graphics/graphics.vala)
set (APP_SOURCES ${APP_SOURCES} sdx/math/Interpolation.vala)
set (APP_SOURCES ${APP_SOURCES} sdx/math/Timeline.vala)
set (APP_SOURCES ${APP_SOURCES} sdx/math/Tween.vala)
set (APP_SOURCES ${APP_SOURCES} sdx/math/TweenAccessor.vala)
set (APP_SOURCES ${APP_SOURCES} sdx/math/TweenManager.vala)
set (APP_SOURCES ${APP_SOURCES} sdx/math/Tweenbase.vala)
set (APP_SOURCES ${APP_SOURCES} sdx/math/Vector2.vala)
set (APP_SOURCES ${APP_SOURCES} sdx/sdx.vala)
set (APP_SOURCES ${APP_SOURCES} sdx/ui/Button.vala)
set (APP_SOURCES ${APP_SOURCES} sdx/ui/Component.vala)
set (APP_SOURCES ${APP_SOURCES} sdx/ui/Label.vala)
set (APP_SOURCES ${APP_SOURCES} sdx/utils/Cache.vala)
set (APP_SOURCES ${APP_SOURCES} sdx/utils/File.vala)
set (APP_SOURCES ${APP_SOURCES} sdx/utils/Json.vala)
set (APP_SOURCES ${APP_SOURCES} sdx/utils/StringTokenizer.vala)
set (APP_SOURCES ${APP_SOURCES} sdx/utils/utils.vala)

set (CUSTOM_VAPIS_LIST ${CUSTOM_VAPIS_LIST} ${CMAKE_SOURCE_DIR}/src/vapis/lua.vapi)
set (CUSTOM_VAPIS_LIST ${CUSTOM_VAPIS_LIST} ${CMAKE_SOURCE_DIR}/src/vapis/mt19937ar.vapi)
set (CUSTOM_VAPIS_LIST ${CUSTOM_VAPIS_LIST} ${CMAKE_SOURCE_DIR}/src/vapis/posix.vapi)

if (EMSCRIPTEN)
	set (COMPILE_OPTIONS ${COMPILE_OPTIONS} -D EMSCRIPTEN)
	set (CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DEMSCRIPTEN " )
	set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DEMSCRIPTEN " )
endif ()
if (ANDROID)
	set (COMPILE_OPTIONS ${COMPILE_OPTIONS} -D ANDROID)
	set (CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DANDROID " )
	set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DANDROID " )
endif ()
if (NOGOBJECT)
	set (COMPILE_OPTIONS ${COMPILE_OPTIONS} -D NOGOBJECT)
	set (CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DNOGOBJECT " )
	set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DNOGOBJECT " )
endif ()
if (DESKTOP)
	set (COMPILE_OPTIONS ${COMPILE_OPTIONS} -D DESKTOP)
	set (CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DDESKTOP " )
	set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DDESKTOP " )
endif ()
set (COMPILE_OPTIONS ${COMPILE_OPTIONS} --vapidir=${CMAKE_SOURCE_DIR}/src/vapis )

if ((${CMAKE_BUILD_TYPE} STREQUAL "Debug") OR (${CMAKE_BUILD_TYPE} STREQUAL "RelWithDebInfo"))
	set(COMPILE_OPTIONS ${COMPILE_OPTIONS} "-g")
endif()

set (COMPILE_OPTIONS ${COMPILE_OPTIONS} --disable-warnings --cc=clang )
set (COMPILE_OPTIONS ${COMPILE_OPTIONS} --gresources=${CMAKE_SOURCE_DIR}/data/resources.gresource.xml )

set (CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -g -Og" )
include_directories (AFTER . )
include_directories (AFTER lua )

vala_precompile(VALA_C match3
	${APP_SOURCES}
PACKAGES
	${VALA_PACKAGES}
CUSTOM_VAPIS
	${CUSTOM_VAPIS_LIST}
OPTIONS
	${COMPILE_OPTIONS}
)

set (VALA_C ${VALA_C} lua/lapi.c)
set (VALA_C ${VALA_C} lua/lauxlib.c)
set (VALA_C ${VALA_C} lua/lbaselib.c)
set (VALA_C ${VALA_C} lua/lbitlib.c)
set (VALA_C ${VALA_C} lua/lcode.c)
set (VALA_C ${VALA_C} lua/lcorolib.c)
set (VALA_C ${VALA_C} lua/lctype.c)
set (VALA_C ${VALA_C} lua/ldblib.c)
set (VALA_C ${VALA_C} lua/ldebug.c)
set (VALA_C ${VALA_C} lua/ldo.c)
set (VALA_C ${VALA_C} lua/ldump.c)
set (VALA_C ${VALA_C} lua/lfunc.c)
set (VALA_C ${VALA_C} lua/lgc.c)
set (VALA_C ${VALA_C} lua/linit.c)
set (VALA_C ${VALA_C} lua/liolib.c)
set (VALA_C ${VALA_C} lua/llex.c)
set (VALA_C ${VALA_C} lua/lmathlib.c)
set (VALA_C ${VALA_C} lua/lmem.c)
set (VALA_C ${VALA_C} lua/loadlib.c)
set (VALA_C ${VALA_C} lua/lobject.c)
set (VALA_C ${VALA_C} lua/lopcodes.c)
set (VALA_C ${VALA_C} lua/loslib.c)
set (VALA_C ${VALA_C} lua/lparser.c)
set (VALA_C ${VALA_C} lua/lstate.c)
set (VALA_C ${VALA_C} lua/lstring.c)
set (VALA_C ${VALA_C} lua/lstrlib.c)
set (VALA_C ${VALA_C} lua/ltable.c)
set (VALA_C ${VALA_C} lua/ltablib.c)
set (VALA_C ${VALA_C} lua/ltm.c)
set (VALA_C ${VALA_C} lua/lundump.c)
set (VALA_C ${VALA_C} lua/lvm.c)
set (VALA_C ${VALA_C} lua/lzio.c)
set (VALA_C ${VALA_C} mt19937ar.c)

SET (VALA_C ${VALA_C} ${resources_gresource_xml_C_FILE})
add_executable(match3 ${VALA_C})
add_dependencies (match3 resources_gresource_xml)
target_link_libraries( match3 m )


install(TARGETS
	match3
RUNTIME DESTINATION
	${CMAKE_INSTALL_BINDIR}
)
if(HAVE_VALADOC)
	valadoc(match3
		${CMAKE_BINARY_DIR}/valadoc/match3
		${APP_SOURCES}
	PACKAGES
		${VALA_PACKAGES}
	CUSTOM_VAPIS
		${CUSTOM_VAPIS_LIST}
	)
	install(DIRECTORY
		${CMAKE_BINARY_DIR}/valadoc
	DESTINATION
		${CMAKE_INSTALL_DATAROOTDIR}/doc/match3
	)
endif()
