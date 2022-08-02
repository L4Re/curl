PKGDIR ?= .
L4DIR  ?= $(PKGDIR)/../..

TARGET = build lib
include $(L4DIR)/mk/subdir.mk

build: lib
