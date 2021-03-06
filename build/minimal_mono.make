# Alternative GNU Make project makefile autogenerated by Premake

ifndef config
  config=debug_x32
endif

ifndef verbose
  SILENT = @
endif

.PHONY: clean prebuild

SHELLTYPE := posix
ifeq (.exe,$(findstring .exe,$(ComSpec)))
	SHELLTYPE := msdos
endif

# Configurations
# #############################################

RESCOMP = windres
FORCE_INCLUDE +=
ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
LINKCMD = $(CXX) -o "$@" $(OBJECTS) $(RESOURCES) $(ALL_LDFLAGS) $(LIBS)
include config.gcc

define PREBUILDCMDS
endef
define PRELINKCMDS
endef
define POSTBUILDCMDS
endef

ifeq ($(config),debug_x32)
TARGETDIR = bin/x32/Debug
TARGET = $(TARGETDIR)/minimald.exe
OBJDIR = obj/x32/Debug/minimal
DEFINES += -D_WINDOWS -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DDEBUG -D_DEBUG -DWXUSINGLIB_WXSQLITE3 -D_UNICODE -D__WXDEBUG__ -D__WXMSW__
INCLUDES += -I"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_lib/msw$(wxSuffix)" -I"$(wxRootDir)/include" -I../samples -I../include
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -g
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m32 -g
LIBS += ../lib/gcc_lib/libwxsqlite3$(wxFlavour)d.a -l$(wxMonolithicLibName) -lkernel32 -luser32 -lgdi32 -lcomdlg32 -lwinspool -lwinmm -lshell32 -lshlwapi -lcomctl32 -lole32 -loleaut32 -luuid -lrpcrt4 -ladvapi32 -lversion -lwsock32 -lwininet -loleacc -luxtheme
LDDEPS += ../lib/gcc_lib/libwxsqlite3$(wxFlavour)d.a
ALL_LDFLAGS += $(LDFLAGS) -L"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_lib" -L/usr/lib32 -m32

else ifeq ($(config),debug_x64)
TARGETDIR = bin/x64/Debug
TARGET = $(TARGETDIR)/minimald.exe
OBJDIR = obj/x64/Debug/minimal
DEFINES += -D_WINDOWS -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DDEBUG -D_DEBUG -DWXUSINGLIB_WXSQLITE3 -D_UNICODE -D__WXDEBUG__ -D__WXMSW__
INCLUDES += -I"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_lib/msw$(wxSuffix)" -I"$(wxRootDir)/include" -I../samples -I../include
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -g
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -g
LIBS += ../lib/gcc_x64_lib/libwxsqlite3$(wxFlavour)d.a -l$(wxMonolithicLibName) -lkernel32 -luser32 -lgdi32 -lcomdlg32 -lwinspool -lwinmm -lshell32 -lshlwapi -lcomctl32 -lole32 -loleaut32 -luuid -lrpcrt4 -ladvapi32 -lversion -lwsock32 -lwininet -loleacc -luxtheme
LDDEPS += ../lib/gcc_x64_lib/libwxsqlite3$(wxFlavour)d.a
ALL_LDFLAGS += $(LDFLAGS) -L"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_lib" -L/usr/lib64 -m64

else ifeq ($(config),release_x32)
TARGETDIR = bin/x32/Release
TARGET = $(TARGETDIR)/minimal.exe
OBJDIR = obj/x32/Release/minimal
DEFINES += -D_WINDOWS -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DNDEBUG -DWXUSINGLIB_WXSQLITE3 -D_UNICODE -D__WXMSW__
INCLUDES += -I"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_lib/msw$(wxSuffix)" -I"$(wxRootDir)/include" -I../samples -I../include
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -O2
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m32 -O2
LIBS += ../lib/gcc_lib/libwxsqlite3$(wxFlavour).a -l$(wxMonolithicLibName) -lkernel32 -luser32 -lgdi32 -lcomdlg32 -lwinspool -lwinmm -lshell32 -lshlwapi -lcomctl32 -lole32 -loleaut32 -luuid -lrpcrt4 -ladvapi32 -lversion -lwsock32 -lwininet -loleacc -luxtheme
LDDEPS += ../lib/gcc_lib/libwxsqlite3$(wxFlavour).a
ALL_LDFLAGS += $(LDFLAGS) -L"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_lib" -L/usr/lib32 -m32 -s

else ifeq ($(config),release_x64)
TARGETDIR = bin/x64/Release
TARGET = $(TARGETDIR)/minimal.exe
OBJDIR = obj/x64/Release/minimal
DEFINES += -D_WINDOWS -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DNDEBUG -DWXUSINGLIB_WXSQLITE3 -D_UNICODE -D__WXMSW__
INCLUDES += -I"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_lib/msw$(wxSuffix)" -I"$(wxRootDir)/include" -I../samples -I../include
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -O2
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -O2
LIBS += ../lib/gcc_x64_lib/libwxsqlite3$(wxFlavour).a -l$(wxMonolithicLibName) -lkernel32 -luser32 -lgdi32 -lcomdlg32 -lwinspool -lwinmm -lshell32 -lshlwapi -lcomctl32 -lole32 -loleaut32 -luuid -lrpcrt4 -ladvapi32 -lversion -lwsock32 -lwininet -loleacc -luxtheme
LDDEPS += ../lib/gcc_x64_lib/libwxsqlite3$(wxFlavour).a
ALL_LDFLAGS += $(LDFLAGS) -L"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_lib" -L/usr/lib64 -m64 -s

else ifeq ($(config),debug_wxdll_x32)
TARGETDIR = bin/x32/Debug_wxDLL
TARGET = $(TARGETDIR)/minimald.exe
OBJDIR = obj/x32/Debug_wxDLL/minimal
DEFINES += -D_WINDOWS -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DDEBUG -D_DEBUG -DWXUSINGLIB_WXSQLITE3 -D_UNICODE -D__WXDEBUG__ -DWXUSINGDLL -D__WXMSW__
INCLUDES += -I"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll/msw$(wxSuffix)" -I"$(wxRootDir)/include" -I../samples -I../include
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -g
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m32 -g
LIBS += ../lib/gcc_lib_wxdll/libwxsqlite3$(wxFlavour)d.a -l$(wxMonolithicLibName) -lkernel32 -luser32 -lgdi32 -lcomdlg32 -lwinspool -lwinmm -lshell32 -lshlwapi -lcomctl32 -lole32 -loleaut32 -luuid -lrpcrt4 -ladvapi32 -lversion -lwsock32 -lwininet -loleacc -luxtheme
LDDEPS += ../lib/gcc_lib_wxdll/libwxsqlite3$(wxFlavour)d.a
ALL_LDFLAGS += $(LDFLAGS) -L"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll" -L/usr/lib32 -m32

else ifeq ($(config),debug_wxdll_x64)
TARGETDIR = bin/x64/Debug_wxDLL
TARGET = $(TARGETDIR)/minimald.exe
OBJDIR = obj/x64/Debug_wxDLL/minimal
DEFINES += -D_WINDOWS -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DDEBUG -D_DEBUG -DWXUSINGLIB_WXSQLITE3 -D_UNICODE -D__WXDEBUG__ -DWXUSINGDLL -D__WXMSW__
INCLUDES += -I"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll/msw$(wxSuffix)" -I"$(wxRootDir)/include" -I../samples -I../include
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -g
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -g
LIBS += ../lib/gcc_x64_lib_wxdll/libwxsqlite3$(wxFlavour)d.a -l$(wxMonolithicLibName) -lkernel32 -luser32 -lgdi32 -lcomdlg32 -lwinspool -lwinmm -lshell32 -lshlwapi -lcomctl32 -lole32 -loleaut32 -luuid -lrpcrt4 -ladvapi32 -lversion -lwsock32 -lwininet -loleacc -luxtheme
LDDEPS += ../lib/gcc_x64_lib_wxdll/libwxsqlite3$(wxFlavour)d.a
ALL_LDFLAGS += $(LDFLAGS) -L"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll" -L/usr/lib64 -m64

else ifeq ($(config),release_wxdll_x32)
TARGETDIR = bin/x32/Release_wxDLL
TARGET = $(TARGETDIR)/minimal.exe
OBJDIR = obj/x32/Release_wxDLL/minimal
DEFINES += -D_WINDOWS -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DNDEBUG -DWXUSINGLIB_WXSQLITE3 -D_UNICODE -DWXUSINGDLL -D__WXMSW__
INCLUDES += -I"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll/msw$(wxSuffix)" -I"$(wxRootDir)/include" -I../samples -I../include
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -O2
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m32 -O2
LIBS += ../lib/gcc_lib_wxdll/libwxsqlite3$(wxFlavour).a -l$(wxMonolithicLibName) -lkernel32 -luser32 -lgdi32 -lcomdlg32 -lwinspool -lwinmm -lshell32 -lshlwapi -lcomctl32 -lole32 -loleaut32 -luuid -lrpcrt4 -ladvapi32 -lversion -lwsock32 -lwininet -loleacc -luxtheme
LDDEPS += ../lib/gcc_lib_wxdll/libwxsqlite3$(wxFlavour).a
ALL_LDFLAGS += $(LDFLAGS) -L"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll" -L/usr/lib32 -m32 -s

else ifeq ($(config),release_wxdll_x64)
TARGETDIR = bin/x64/Release_wxDLL
TARGET = $(TARGETDIR)/minimal.exe
OBJDIR = obj/x64/Release_wxDLL/minimal
DEFINES += -D_WINDOWS -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DNDEBUG -DWXUSINGLIB_WXSQLITE3 -D_UNICODE -DWXUSINGDLL -D__WXMSW__
INCLUDES += -I"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll/msw$(wxSuffix)" -I"$(wxRootDir)/include" -I../samples -I../include
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -O2
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -O2
LIBS += ../lib/gcc_x64_lib_wxdll/libwxsqlite3$(wxFlavour).a -l$(wxMonolithicLibName) -lkernel32 -luser32 -lgdi32 -lcomdlg32 -lwinspool -lwinmm -lshell32 -lshlwapi -lcomctl32 -lole32 -loleaut32 -luuid -lrpcrt4 -ladvapi32 -lversion -lwsock32 -lwininet -loleacc -luxtheme
LDDEPS += ../lib/gcc_x64_lib_wxdll/libwxsqlite3$(wxFlavour).a
ALL_LDFLAGS += $(LDFLAGS) -L"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll" -L/usr/lib64 -m64 -s

else ifeq ($(config),dll_debug_x32)
TARGETDIR = bin/x32/DLL_Debug
TARGET = $(TARGETDIR)/minimald.exe
OBJDIR = obj/x32/DLL_Debug/minimal
DEFINES += -D_WINDOWS -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DDEBUG -D_DEBUG -DWXUSINGDLL_WXSQLITE3 -D_UNICODE -D__WXDEBUG__ -DWXUSINGDLL -D__WXMSW__
INCLUDES += -I"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll/msw$(wxSuffix)" -I"$(wxRootDir)/include" -I../samples -I../include
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -g
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m32 -g
LIBS += ../lib/gcc_dll/libwxsqlite3$(wxFlavour)d.a -l$(wxMonolithicLibName) -lkernel32 -luser32 -lgdi32 -lcomdlg32 -lwinspool -lwinmm -lshell32 -lshlwapi -lcomctl32 -lole32 -loleaut32 -luuid -lrpcrt4 -ladvapi32 -lversion -lwsock32 -lwininet -loleacc -luxtheme
LDDEPS += ../lib/gcc_dll/libwxsqlite3$(wxFlavour)d.a
ALL_LDFLAGS += $(LDFLAGS) -L"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll" -L/usr/lib32 -m32

else ifeq ($(config),dll_debug_x64)
TARGETDIR = bin/x64/DLL_Debug
TARGET = $(TARGETDIR)/minimald.exe
OBJDIR = obj/x64/DLL_Debug/minimal
DEFINES += -D_WINDOWS -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DDEBUG -D_DEBUG -DWXUSINGDLL_WXSQLITE3 -D_UNICODE -D__WXDEBUG__ -DWXUSINGDLL -D__WXMSW__
INCLUDES += -I"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll/msw$(wxSuffix)" -I"$(wxRootDir)/include" -I../samples -I../include
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -g
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -g
LIBS += ../lib/gcc_x64_dll/libwxsqlite3$(wxFlavour)d.a -l$(wxMonolithicLibName) -lkernel32 -luser32 -lgdi32 -lcomdlg32 -lwinspool -lwinmm -lshell32 -lshlwapi -lcomctl32 -lole32 -loleaut32 -luuid -lrpcrt4 -ladvapi32 -lversion -lwsock32 -lwininet -loleacc -luxtheme
LDDEPS += ../lib/gcc_x64_dll/libwxsqlite3$(wxFlavour)d.a
ALL_LDFLAGS += $(LDFLAGS) -L"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll" -L/usr/lib64 -m64

else ifeq ($(config),dll_release_x32)
TARGETDIR = bin/x32/DLL_Release
TARGET = $(TARGETDIR)/minimal.exe
OBJDIR = obj/x32/DLL_Release/minimal
DEFINES += -D_WINDOWS -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DNDEBUG -DWXUSINGDLL_WXSQLITE3 -D_UNICODE -DWXUSINGDLL -D__WXMSW__
INCLUDES += -I"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll/msw$(wxSuffix)" -I"$(wxRootDir)/include" -I../samples -I../include
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -O2
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m32 -O2
LIBS += ../lib/gcc_dll/libwxsqlite3$(wxFlavour).a -l$(wxMonolithicLibName) -lkernel32 -luser32 -lgdi32 -lcomdlg32 -lwinspool -lwinmm -lshell32 -lshlwapi -lcomctl32 -lole32 -loleaut32 -luuid -lrpcrt4 -ladvapi32 -lversion -lwsock32 -lwininet -loleacc -luxtheme
LDDEPS += ../lib/gcc_dll/libwxsqlite3$(wxFlavour).a
ALL_LDFLAGS += $(LDFLAGS) -L"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll" -L/usr/lib32 -m32 -s

else ifeq ($(config),dll_release_x64)
TARGETDIR = bin/x64/DLL_Release
TARGET = $(TARGETDIR)/minimal.exe
OBJDIR = obj/x64/DLL_Release/minimal
DEFINES += -D_WINDOWS -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DNDEBUG -DWXUSINGDLL_WXSQLITE3 -D_UNICODE -DWXUSINGDLL -D__WXMSW__
INCLUDES += -I"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll/msw$(wxSuffix)" -I"$(wxRootDir)/include" -I../samples -I../include
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -O2
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -O2
LIBS += ../lib/gcc_x64_dll/libwxsqlite3$(wxFlavour).a -l$(wxMonolithicLibName) -lkernel32 -luser32 -lgdi32 -lcomdlg32 -lwinspool -lwinmm -lshell32 -lshlwapi -lcomctl32 -lole32 -loleaut32 -luuid -lrpcrt4 -ladvapi32 -lversion -lwsock32 -lwininet -loleacc -luxtheme
LDDEPS += ../lib/gcc_x64_dll/libwxsqlite3$(wxFlavour).a
ALL_LDFLAGS += $(LDFLAGS) -L"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll" -L/usr/lib64 -m64 -s

else
  $(error "invalid configuration $(config)")
endif

# Per File Configurations
# #############################################


# File sets
# #############################################

CUSTOM :=
OBJECTS :=

CUSTOM += $(OBJDIR)/minimal.res
OBJECTS += $(OBJDIR)/minimal.o

# Rules
# #############################################

all: $(TARGET)
	@:

$(TARGET): $(CUSTOM) $(OBJECTS) $(LDDEPS) | $(TARGETDIR)
	$(PRELINKCMDS)
	@echo Linking minimal
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning minimal
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild: | $(OBJDIR)
	$(PREBUILDCMDS)

$(CUSTOM): | prebuild
ifneq (,$(PCH))
$(OBJECTS): $(GCH) | $(PCH_PLACEHOLDER)
$(GCH): $(PCH) | prebuild
	@echo $(notdir $<)
	$(SILENT) $(CXX) -x c++-header $(ALL_CXXFLAGS) -o "$@" -MF "$(@:%.gch=%.d)" -c "$<"
$(PCH_PLACEHOLDER): $(GCH) | $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) touch "$@"
else
	$(SILENT) echo $null >> "$@"
endif
else
$(OBJECTS): | prebuild
endif


# File Rules
# #############################################

$(OBJDIR)/minimal.o: ../samples/minimal.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/minimal.res: ../samples/minimal.rc
	@echo $(notdir $<)
	$(SILENT) $(RESCOMP) $< -O coff -o "$@" $(ALL_RESFLAGS)

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(PCH_PLACEHOLDER).d
endif