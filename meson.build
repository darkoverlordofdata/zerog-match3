project('match3',['c','vala'])

EMSCRIPTEN = (get_option('EMSCRIPTEN') != '')
ANDROID = (get_option('ANDROID') != '')
NOGOBJECT = (get_option('NOGOBJECT') != '')
DESKTOP = (get_option('DESKTOP') != '')

add_global_arguments('-DGETTEXT_PACKAGE="match3"',language: 'c')

SDL2_image_dep = dependency('SDL2_image')
SDL2_mixer_dep = dependency('SDL2_mixer')
SDL2_ttf_dep = dependency('SDL2_ttf')
gio_2_0_dep = dependency('gio-2.0')
glib_2_0_dep = dependency('glib-2.0')
gobject_2_0_dep = dependency('gobject-2.0')
sdl2_dep = dependency('sdl2')

resources_gresource_xml_generator = generator(find_program('glib-compile-resources'), arguments: [ '--sourcedir=@SOURCE_DIR@/data' , '--generate-source', '--target=@BUILD_DIR@/resources.gresource.xml.c', '@INPUT@'], output: '@PLAINNAME@.c')

resources_gresource_xml_file_c = resources_gresource_xml_generator.process(['data/resources.gresource.xml'])

meson.add_install_script(join_paths(meson.current_source_dir(),'meson_scripts','install_data.sh'),join_paths(get_option('prefix'),get_option('datadir'),'match3'),join_paths(meson.current_source_dir(),'data/local','','*'))

meson.add_install_script(join_paths(meson.current_source_dir(),'meson_scripts','install_data.sh'),join_paths(get_option('prefix'),get_option('datadir'),'doc'),join_paths(meson.current_source_dir(),'doc','','*'))

cfg_match3 = configuration_data()
cfg_match3.set('DATADIR', join_paths(get_option('prefix'),get_option('datadir')))
cfg_match3.set('PKGDATADIR', join_paths(get_option('prefix'),get_option('datadir'),'match3'))
cfg_match3.set('GETTEXT_PACKAGE', 'match3')
cfg_match3.set('RELEASE_NAME', 'match3')
cfg_match3.set('PREFIX', get_option('prefix'))
cfg_match3.set('VERSION', '1.0.0')
cfg_match3.set('TESTSRCDIR', meson.current_source_dir())

cfgfile_1 = configure_file(input: 'src/Config.vala.base',output: 'Config_1.vala',configuration: cfg_match3)

match3_deps = [SDL2_image_dep]
match3_deps += [SDL2_mixer_dep]
match3_deps += [SDL2_ttf_dep]
match3_deps += [gio_2_0_dep]
match3_deps += [glib_2_0_dep]
match3_deps += [gobject_2_0_dep]
match3_deps += [sdl2_dep]
match3_sources = [cfgfile_1]
match3_sources += ['src/Board.vala']
match3_sources += ['src/Jewel.vala']
match3_sources += ['src/TweenAccessors.vala']
match3_sources += ['src/components.vala']
match3_sources += ['src/entitas/Group.vala']
match3_sources += ['src/entitas/Matcher.vala']
match3_sources += ['src/entitas/World.vala']
match3_sources += ['src/entitas/entitas.vala']
match3_sources += ['src/entitas/events/ComponentReplaced.vala']
match3_sources += ['src/entitas/events/EntityChanged.vala']
match3_sources += ['src/entitas/events/EntityReleased.vala']
match3_sources += ['src/entitas/events/GroupChanged.vala']
match3_sources += ['src/entitas/events/GroupUpdated.vala']
match3_sources += ['src/entitas/events/GroupsChanged.vala']
match3_sources += ['src/entitas/events/WorldChanged.vala']
match3_sources += ['src/entity.vala']
match3_sources += ['src/goop/Class.vala']
match3_sources += ['src/goop/Guid.vala']
match3_sources += ['src/main.vala']
match3_sources += ['src/match3.vala']
match3_sources += ['src/sdx/ApplicationListener.vala']
match3_sources += ['src/sdx/Color.vala']
match3_sources += ['src/sdx/Files.vala']
match3_sources += ['src/sdx/Font.vala']
match3_sources += ['src/sdx/InputMultiplexer.vala']
match3_sources += ['src/sdx/InputProcessor.vala']
match3_sources += ['src/sdx/Screen.vala']
match3_sources += ['src/sdx/audio/Sound.vala']
match3_sources += ['src/sdx/audio/audio.vala']
match3_sources += ['src/sdx/exceptions.vala']
match3_sources += ['src/sdx/files/FileHandle.vala']
match3_sources += ['src/sdx/files/files.vala']
match3_sources += ['src/sdx/graphics/BitmapFont.vala']
match3_sources += ['src/sdx/graphics/Camera.vala']
match3_sources += ['src/sdx/graphics/NinePatch.vala']
match3_sources += ['src/sdx/graphics/Sprite.vala']
match3_sources += ['src/sdx/graphics/Surface.vala']
match3_sources += ['src/sdx/graphics/TextureAtlas.vala']
match3_sources += ['src/sdx/graphics/TextureEnums.vala']
match3_sources += ['src/sdx/graphics/TextureRegion.vala']
match3_sources += ['src/sdx/graphics/graphics.vala']
match3_sources += ['src/sdx/math/Interpolation.vala']
match3_sources += ['src/sdx/math/Timeline.vala']
match3_sources += ['src/sdx/math/Tween.vala']
match3_sources += ['src/sdx/math/TweenAccessor.vala']
match3_sources += ['src/sdx/math/TweenManager.vala']
match3_sources += ['src/sdx/math/Tweenbase.vala']
match3_sources += ['src/sdx/math/Vector2.vala']
match3_sources += ['src/sdx/sdx.vala']
match3_sources += ['src/sdx/ui/Button.vala']
match3_sources += ['src/sdx/ui/Component.vala']
match3_sources += ['src/sdx/ui/Label.vala']
match3_sources += ['src/sdx/utils/Cache.vala']
match3_sources += ['src/sdx/utils/File.vala']
match3_sources += ['src/sdx/utils/Json.vala']
match3_sources += ['src/sdx/utils/StringTokenizer.vala']
match3_sources += ['src/sdx/utils/utils.vala']
match3_sources += ['src/lua/lapi.c']
match3_sources += ['src/lua/lauxlib.c']
match3_sources += ['src/lua/lbaselib.c']
match3_sources += ['src/lua/lbitlib.c']
match3_sources += ['src/lua/lcode.c']
match3_sources += ['src/lua/lcorolib.c']
match3_sources += ['src/lua/lctype.c']
match3_sources += ['src/lua/ldblib.c']
match3_sources += ['src/lua/ldebug.c']
match3_sources += ['src/lua/ldo.c']
match3_sources += ['src/lua/ldump.c']
match3_sources += ['src/lua/lfunc.c']
match3_sources += ['src/lua/lgc.c']
match3_sources += ['src/lua/linit.c']
match3_sources += ['src/lua/liolib.c']
match3_sources += ['src/lua/llex.c']
match3_sources += ['src/lua/lmathlib.c']
match3_sources += ['src/lua/lmem.c']
match3_sources += ['src/lua/loadlib.c']
match3_sources += ['src/lua/lobject.c']
match3_sources += ['src/lua/lopcodes.c']
match3_sources += ['src/lua/loslib.c']
match3_sources += ['src/lua/lparser.c']
match3_sources += ['src/lua/lstate.c']
match3_sources += ['src/lua/lstring.c']
match3_sources += ['src/lua/lstrlib.c']
match3_sources += ['src/lua/ltable.c']
match3_sources += ['src/lua/ltablib.c']
match3_sources += ['src/lua/ltm.c']
match3_sources += ['src/lua/lundump.c']
match3_sources += ['src/lua/lvm.c']
match3_sources += ['src/lua/lzio.c']
match3_sources += ['src/mt19937ar.c']
match3_sources += [resources_gresource_xml_file_c]
match3_sources += [join_paths(meson.current_source_dir(),'src/vapis/lua.vapi')]
match3_sources += [join_paths(meson.current_source_dir(),'src/vapis/mt19937ar.vapi')]
match3_sources += [join_paths(meson.current_source_dir(),'src/vapis/posix.vapi')]
match3_vala_args = ['--vapidir='+join_paths(meson.current_source_dir(),'src/vapis')]
match3_vala_args += ['--gresources='+join_paths(meson.current_source_dir(),'data/resources.gresource.xml')]
match3_vala_args += ['--disable-warnings', '--cc=clang']
match3_c_args = ['-g', '-Og']
if EMSCRIPTEN
  match3_vala_args += ['-D', 'EMSCRIPTEN']
  match3_c_args += ['-DEMSCRIPTEN']
endif
if ANDROID
  match3_vala_args += ['-D', 'ANDROID']
  match3_c_args += ['-DANDROID']
endif
if NOGOBJECT
  match3_vala_args += ['-D', 'NOGOBJECT']
  match3_c_args += ['-DNOGOBJECT']
endif
if DESKTOP
  match3_vala_args += ['-D', 'DESKTOP']
  match3_c_args += ['-DDESKTOP']
endif
match3_deps += [meson.get_compiler('c').find_library('m', required : false)]
match3_hfolders = [include_directories('.')]
match3_hfolders += [include_directories('lua')]

executable('match3',match3_sources,dependencies: match3_deps,vala_args: match3_vala_args,c_args: match3_c_args,include_directories: match3_hfolders,install: true)

