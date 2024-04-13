TARGET := iphone:clang:latest:15.0
THEOS_PACKAGE_SCHEME=rootless
PACKAGE_VERSION = 1.0.2
DEBUG = 1
FINALPACKAGE = 0
ARCHS = arm64 arm64e
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = ShortLook_WeChat
$(BUNDLE_NAME)_CFLAGS = -fobjc-arc
$(BUNDLE_NAME)_FILES = $(wildcard *.m)
$(BUNDLE_NAME)_FRAMEWORKS = UIKit MobileCoreServices
$(BUNDLE_NAME)_INSTALL_PATH = /var/jb/Library/Dynastic/ShortLook/Plugins/ContactPhotoProviders

include $(THEOS_MAKE_PATH)/bundle.mk

BUNDLE_PATH = $($(BUNDLE_NAME)_INSTALL_PATH)/$(BUNDLE_NAME).bundle
