LOCAL_PATH:=$(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := pts-multicall
LOCAL_CFLAGS += -Wall -fPIE
LOCAL_LDFLAGS += -fPIE -pie
LOCAL_LDLIBS += -L$(SYSROOT)/usr/lib -llog
LOCAL_C_INCLUDES := bionic

LOCAL_SRC_FILES := main.c pts-shell.c pts-wrap.c pts-exec.c pts-daemon.c pts-passwd.c bcrypt.c blowfish.c helpers.c

include $(BUILD_EXECUTABLE)

