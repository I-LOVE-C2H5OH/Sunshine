# This file will be configured to contain variables for CPack. These variables
# should be set in the CMake list file of the project before CPack module is
# included. The list of available CPACK_xxx variables and their associated
# documentation may be obtained using
#  cpack --help-variable-list
#
# Some variables are common to all generators (e.g. CPACK_PACKAGE_NAME)
# and some are specific to a generator
# (e.g. CPACK_NSIS_EXTRA_INSTALL_COMMANDS). The generator specific variables
# usually begin with CPACK_<GENNAME>_xxxx.


set(CPACK_BINARY_7Z "OFF")
set(CPACK_BINARY_IFW "OFF")
set(CPACK_BINARY_NSIS "ON")
set(CPACK_BINARY_NUGET "OFF")
set(CPACK_BINARY_WIX "OFF")
set(CPACK_BINARY_ZIP "OFF")
set(CPACK_BUILD_SOURCE_DIRS "C:/msys64/home/admin/sunshine;C:/msys64/home/admin/sunshine/release")
set(CPACK_CMAKE_GENERATOR "MinGW Makefiles")
set(CPACK_COMPONENTS_ALL "Unspecified;application;assets;audio;dxgi;firewall;service;sunshinesvc")
set(CPACK_COMPONENT_APPLICATION_DEPENDS "assets")
set(CPACK_COMPONENT_APPLICATION_DESCRIPTION "Sunshine main application.")
set(CPACK_COMPONENT_APPLICATION_DISPLAY_NAME "Sunshine")
set(CPACK_COMPONENT_APPLICATION_GROUP "core")
set(CPACK_COMPONENT_APPLICATION_REQUIRED "true")
set(CPACK_COMPONENT_ASSETS_DESCRIPTION "Shaders, default box art, and web ui.")
set(CPACK_COMPONENT_ASSETS_DISPLAY_NAME "assets")
set(CPACK_COMPONENT_ASSETS_GROUP "core")
set(CPACK_COMPONENT_ASSETS_REQUIRED "true")
set(CPACK_COMPONENT_AUDIO_DESCRIPTION "CLI tool providing information about sound devices.")
set(CPACK_COMPONENT_AUDIO_DISPLAY_NAME "audio-info")
set(CPACK_COMPONENT_AUDIO_GROUP "tools")
set(CPACK_COMPONENT_DXGI_DESCRIPTION "CLI tool providing information about graphics cards and displays.")
set(CPACK_COMPONENT_DXGI_DISPLAY_NAME "dxgi-info")
set(CPACK_COMPONENT_DXGI_GROUP "tools")
set(CPACK_COMPONENT_FIREWALL_DESCRIPTION "Scripts to enable or disable firewall rules.")
set(CPACK_COMPONENT_FIREWALL_DISPLAY_NAME "firewall-scripts")
set(CPACK_COMPONENT_FIREWALL_GROUP "scripts")
set(CPACK_COMPONENT_SERVICE_DEPENDS "sunshinesvc")
set(CPACK_COMPONENT_SERVICE_DESCRIPTION "Scripts to enable/disable the service.")
set(CPACK_COMPONENT_SERVICE_DISPLAY_NAME "service-scripts")
set(CPACK_COMPONENT_SERVICE_GROUP "scripts")
set(CPACK_COMPONENT_SUNSHINESVC_DESCRIPTION "CLI tool providing ability to enable/disable the Sunshine service.")
set(CPACK_COMPONENT_SUNSHINESVC_DISPLAY_NAME "sunshinesvc")
set(CPACK_COMPONENT_SUNSHINESVC_GROUP "tools")
set(CPACK_COMPONENT_UNSPECIFIED_HIDDEN "TRUE")
set(CPACK_COMPONENT_UNSPECIFIED_REQUIRED "TRUE")
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "https://github.com/LizardByte")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_FILE "C:/msys64/mingw64/share/cmake/Templates/CPack.GenericDescription.txt")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_SUMMARY "Sunshine built using CMake")
set(CPACK_DMG_SLA_USE_RESOURCE_FILE_LICENSE "ON")
set(CPACK_GENERATOR "7Z;ZIP")
set(CPACK_IGNORE_FILES "/CVS/;/\\.svn/;/\\.bzr/;/\\.hg/;/\\.git/;\\.swp\$;\\.#;/#")
set(CPACK_INSTALLED_DIRECTORIES "C:/msys64/home/admin/sunshine;/")
set(CPACK_INSTALL_CMAKE_PROJECTS "")
set(CPACK_INSTALL_PREFIX "C:/Program Files (x86)/Sunshine")
set(CPACK_MODULE_PATH "C:/msys64/home/admin/sunshine/cmake")
set(CPACK_NSIS_CONTACT "https://app.lizardbyte.dev/support")
set(CPACK_NSIS_CREATE_ICONS_EXTRA "
        CreateShortCut '$SMPROGRAMS\\$STARTMENU_FOLDER\\Sunshine (Foreground Mode).lnk'             '$INSTDIR\\Sunshine.exe'
        ")
set(CPACK_NSIS_DELETE_ICONS_EXTRA "
        Delete '$SMPROGRAMS\\$MUI_TEMP\\Sunshine (Foreground Mode).lnk'
        ")
set(CPACK_NSIS_DISPLAY_NAME "Sunshine")
set(CPACK_NSIS_ENABLE_UNINSTALL_BEFORE_INSTALL "ON")
set(CPACK_NSIS_EXECUTABLES_DIRECTORY ".")
set(CPACK_NSIS_EXTRA_INSTALL_COMMANDS "
        IfSilent +2 0
        ExecShell 'open' 'https://sunshinestream.readthedocs.io/'
        nsExec::ExecToLog 'icacls \"$INSTDIR\" /reset'
        nsExec::ExecToLog '\"$INSTDIR\\scripts\\migrate-config.bat\"'
        nsExec::ExecToLog 'icacls \"$INSTDIR\\config\" /grant:r Users:\(OI\)\(CI\)\(F\)'
        nsExec::ExecToLog '\"$INSTDIR\\scripts\\add-firewall-rule.bat\"'
        nsExec::ExecToLog '\"$INSTDIR\\scripts\\install-service.bat\"'
        MessageBox MB_YESNO|MB_ICONQUESTION             'Do you want to install ViGEmBus? This is REQUIRED for gamepad support while streaming.'             /SD IDNO IDNO NoController
            ExecShell 'open' 'https://github.com/ViGEm/ViGEmBus/releases/latest';                 skipped if no
        NoController:
        ")
set(CPACK_NSIS_EXTRA_UNINSTALL_COMMANDS "
        nsExec::ExecToLog '\"$INSTDIR\\scripts\\delete-firewall-rule.bat\"'
        nsExec::ExecToLog '\"$INSTDIR\\scripts\\uninstall-service.bat\"'
        MessageBox MB_YESNO|MB_ICONQUESTION             'Do you want to remove $INSTDIR (this includes the configuration, cover images, and settings)?'             /SD IDNO IDNO NoDelete
            RMDir /r \"$INSTDIR\"; skipped if no
        NoDelete:
        ")
set(CPACK_NSIS_HELP_LINK "https://sunshinestream.readthedocs.io/about/installation.html")
set(CPACK_NSIS_INSTALLED_ICON_NAME "Sunshine.exe")
set(CPACK_NSIS_INSTALLER_ICON_CODE "")
set(CPACK_NSIS_INSTALLER_MUI_ICON_CODE "")
set(CPACK_NSIS_INSTALL_ROOT "$PROGRAMFILES64")
set(CPACK_NSIS_MENU_LINKS "https://sunshinestream.readthedocs.io;Sunshine documentation;https://app.lizardbyte.dev;LizardByte Web Site;https://app.lizardbyte.dev/support;LizardByte Support")
set(CPACK_NSIS_MODIFY_PATH "OFF")
set(CPACK_NSIS_PACKAGE_NAME "Sunshine")
set(CPACK_NSIS_UNINSTALL_NAME "Uninstall")
set(CPACK_NSIS_URL_INFO_ABOUT "https://app.lizardbyte.dev")
set(CPACK_OBJCOPY_EXECUTABLE "C:/msys64/mingw64/bin/objcopy.exe")
set(CPACK_OBJDUMP_EXECUTABLE "C:/msys64/mingw64/bin/objdump.exe")
set(CPACK_OUTPUT_CONFIG_FILE "C:/msys64/home/admin/sunshine/release/CPackConfig.cmake")
set(CPACK_PACKAGE_CONTACT "https://app.lizardbyte.dev")
set(CPACK_PACKAGE_DEFAULT_LOCATION "/")
set(CPACK_PACKAGE_DESCRIPTION "Sunshine is a self-hosted game stream host for Moonlight.")
set(CPACK_PACKAGE_DESCRIPTION_FILE "C:/msys64/mingw64/share/cmake/Templates/CPack.GenericDescription.txt")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "Sunshine is a self-hosted game stream host for Moonlight.")
set(CPACK_PACKAGE_DIRECTORY "C:/msys64/home/admin/sunshine/release/cpack_artifacts")
set(CPACK_PACKAGE_FILE_NAME "Sunshine-0.18.4-Source")
set(CPACK_PACKAGE_HOMEPAGE_URL "https://app.lizardbyte.dev")
set(CPACK_PACKAGE_ICON "C:/msys64/home/admin/sunshine\\sunshine.ico")
set(CPACK_PACKAGE_INSTALL_DIRECTORY "Sunshine")
set(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "Sunshine")
set(CPACK_PACKAGE_NAME "Sunshine")
set(CPACK_PACKAGE_RELOCATABLE "true")
set(CPACK_PACKAGE_VENDOR "LizardByte")
set(CPACK_PACKAGE_VERSION "0.18.4")
set(CPACK_PACKAGE_VERSION_MAJOR "0")
set(CPACK_PACKAGE_VERSION_MINOR "18")
set(CPACK_PACKAGE_VERSION_PATCH "4")
set(CPACK_READELF_EXECUTABLE "C:/msys64/mingw64/bin/readelf.exe")
set(CPACK_RESOURCE_FILE_LICENSE "C:/msys64/home/admin/sunshine/LICENSE")
set(CPACK_RESOURCE_FILE_README "C:/msys64/mingw64/share/cmake/Templates/CPack.GenericDescription.txt")
set(CPACK_RESOURCE_FILE_WELCOME "C:/msys64/mingw64/share/cmake/Templates/CPack.GenericWelcome.txt")
set(CPACK_RPM_PACKAGE_SOURCES "ON")
set(CPACK_SET_DESTDIR "OFF")
set(CPACK_SOURCE_7Z "ON")
set(CPACK_SOURCE_GENERATOR "7Z;ZIP")
set(CPACK_SOURCE_IGNORE_FILES "/CVS/;/\\.svn/;/\\.bzr/;/\\.hg/;/\\.git/;\\.swp\$;\\.#;/#")
set(CPACK_SOURCE_INSTALLED_DIRECTORIES "C:/msys64/home/admin/sunshine;/")
set(CPACK_SOURCE_OUTPUT_CONFIG_FILE "C:/msys64/home/admin/sunshine/release/CPackSourceConfig.cmake")
set(CPACK_SOURCE_PACKAGE_FILE_NAME "Sunshine-0.18.4-Source")
set(CPACK_SOURCE_TOPLEVEL_TAG "win64-Source")
set(CPACK_SOURCE_ZIP "ON")
set(CPACK_STRIP_FILES "")
set(CPACK_SYSTEM_NAME "win64")
set(CPACK_THREADS "1")
set(CPACK_TOPLEVEL_TAG "win64-Source")
set(CPACK_WIX_SIZEOF_VOID_P "8")

if(NOT CPACK_PROPERTIES_FILE)
  set(CPACK_PROPERTIES_FILE "C:/msys64/home/admin/sunshine/release/CPackProperties.cmake")
endif()

if(EXISTS ${CPACK_PROPERTIES_FILE})
  include(${CPACK_PROPERTIES_FILE})
endif()
