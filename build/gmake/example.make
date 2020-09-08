# GNU Make project makefile autogenerated by Premake

ifndef config
  config=release_x86_64
endif

ifndef verbose
  SILENT = @
endif

.PHONY: clean prebuild prelink

ifeq ($(config),release_x86_64)
  RESCOMP = windres
  TARGETDIR = bin/x86_64/Release
  TARGET = $(TARGETDIR)/example
  OBJDIR = obj/x86_64/Release/example
  DEFINES += -DNDEBUG
  INCLUDES += -I../../extra/thirdparty
  FORCE_INCLUDE +=
  ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -O3 -Wall -Wextra
  ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -O3 -Wall -Wextra -std=c++11 -fno-exceptions -fno-rtti
  ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  LIBS += bin/x86_64/Release/libstb_image_write.a bin/x86_64/Release/libtiny_obj_loader.a bin/x86_64/Release/libxatlas.a -lpthread
  LDDEPS += bin/x86_64/Release/libstb_image_write.a bin/x86_64/Release/libtiny_obj_loader.a bin/x86_64/Release/libxatlas.a
  ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib64 -m64 -s
  LINKCMD = $(CXX) -o "$@" $(OBJECTS) $(RESOURCES) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
all: prebuild prelink $(TARGET)
	@:

endif

ifeq ($(config),release_x86)
  RESCOMP = windres
  TARGETDIR = bin/x86/Release
  TARGET = $(TARGETDIR)/example
  OBJDIR = obj/x86/Release/example
  DEFINES += -DNDEBUG
  INCLUDES += -I../../extra/thirdparty
  FORCE_INCLUDE +=
  ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -O3 -Wall -Wextra
  ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m32 -O3 -Wall -Wextra -std=c++11 -fno-exceptions -fno-rtti
  ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  LIBS += bin/x86/Release/libstb_image_write.a bin/x86/Release/libtiny_obj_loader.a bin/x86/Release/libxatlas.a -lpthread
  LDDEPS += bin/x86/Release/libstb_image_write.a bin/x86/Release/libtiny_obj_loader.a bin/x86/Release/libxatlas.a
  ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib32 -m32 -s
  LINKCMD = $(CXX) -o "$@" $(OBJECTS) $(RESOURCES) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
all: prebuild prelink $(TARGET)
	@:

endif

ifeq ($(config),debug_x86_64)
  RESCOMP = windres
  TARGETDIR = bin/x86_64/Debug
  TARGET = $(TARGETDIR)/example
  OBJDIR = obj/x86_64/Debug/example
  DEFINES += -D_DEBUG
  INCLUDES += -I../../extra/thirdparty
  FORCE_INCLUDE +=
  ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -Og -g -Wall -Wextra
  ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -Og -g -Wall -Wextra -std=c++11 -fno-exceptions -fno-rtti
  ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  LIBS += bin/x86_64/Debug/libstb_image_write.a bin/x86_64/Debug/libtiny_obj_loader.a bin/x86_64/Debug/libxatlas.a -lpthread
  LDDEPS += bin/x86_64/Debug/libstb_image_write.a bin/x86_64/Debug/libtiny_obj_loader.a bin/x86_64/Debug/libxatlas.a
  ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib64 -m64
  LINKCMD = $(CXX) -o "$@" $(OBJECTS) $(RESOURCES) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
all: prebuild prelink $(TARGET)
	@:

endif

ifeq ($(config),debug_x86)
  RESCOMP = windres
  TARGETDIR = bin/x86/Debug
  TARGET = $(TARGETDIR)/example
  OBJDIR = obj/x86/Debug/example
  DEFINES += -D_DEBUG
  INCLUDES += -I../../extra/thirdparty
  FORCE_INCLUDE +=
  ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -Og -g -Wall -Wextra
  ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m32 -Og -g -Wall -Wextra -std=c++11 -fno-exceptions -fno-rtti
  ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  LIBS += bin/x86/Debug/libstb_image_write.a bin/x86/Debug/libtiny_obj_loader.a bin/x86/Debug/libxatlas.a -lpthread
  LDDEPS += bin/x86/Debug/libstb_image_write.a bin/x86/Debug/libtiny_obj_loader.a bin/x86/Debug/libxatlas.a
  ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib32 -m32
  LINKCMD = $(CXX) -o "$@" $(OBJECTS) $(RESOURCES) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
all: prebuild prelink $(TARGET)
	@:

endif

OBJECTS := \
	$(OBJDIR)/example.o \

RESOURCES := \

CUSTOMFILES := \

SHELLTYPE := posix
ifeq (.exe,$(findstring .exe,$(ComSpec)))
	SHELLTYPE := msdos
endif

$(TARGET): $(GCH) ${CUSTOMFILES} $(OBJECTS) $(LDDEPS) $(RESOURCES) | $(TARGETDIR)
	@echo Linking example
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(CUSTOMFILES): | $(OBJDIR)

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
	@echo Cleaning example
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild:
	$(PREBUILDCMDS)

prelink:
	$(PRELINKCMDS)

ifneq (,$(PCH))
$(OBJECTS): $(GCH) $(PCH) | $(OBJDIR)
$(GCH): $(PCH) | $(OBJDIR)
	@echo $(notdir $<)
	$(SILENT) $(CXX) -x c++-header $(ALL_CXXFLAGS) -o "$@" -MF "$(@:%.gch=%.d)" -c "$<"
else
$(OBJECTS): | $(OBJDIR)
endif

$(OBJDIR)/example.o: ../../extra/example.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(OBJDIR)/$(notdir $(PCH)).d
endif