LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	BnHelloService.cpp \
	BpHelloService.cpp \
	BnGoodbyeService.cpp \
	BpGoodbyeService.cpp \
	test_server.cpp

LOCAL_SHARED_LIBRARIES := \
	libcutils \
	libutils \
	liblog \
	libbinder 


LOCAL_MODULE:= test_server_cpp
LOCAL_64_BIT_ONLY := true

include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	BpHelloService.cpp \
	BpGoodbyeService.cpp \
	test_client.cpp

LOCAL_SHARED_LIBRARIES := \
	libcutils \
	libutils \
	liblog \
	libbinder 


LOCAL_MODULE:= test_client_cpp
LOCAL_64_BIT_ONLY := true

include $(BUILD_EXECUTABLE)
