LOCAL_PATH := $(call my-dir)

lib_src_files := \
	readline.c vi_mode.c funmap.c keymaps.c \
	parens.c search.c rltty.c complete.c \
	bind.c isearch.c display.c signals.c \
	util.c kill.c undo.c macro.c \
	input.c callback.c terminal.c text.c \
	colors.c parse-colors.c \
	nls.c misc.c compat.c xfree.c xmalloc.c \
	history.c histexpand.c histfile.c histsearch.c \
	shell.c mbutil.c tilde.c

include $(CLEAR_VARS)
LOCAL_MODULE := libreadline
LOCAL_C_INCLUDES := $(LOCAL_PATH)
LOCAL_CFLAGS += -DHAVE_CONFIG_H -DRL_LIBRARY_VERSION='"6.3"'
LOCAL_SRC_FILES := $(lib_src_files)
LOCAL_SHARED_LIBRARIES := libncurses
include $(BUILD_SHARED_LIBRARY)
