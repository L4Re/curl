PKGDIR ?= ../..
L4DIR  ?= $(PKGDIR)/../..

TARGET             = libcurl.a libcurl.so
PC_FILENAME        = libcurl
REQUIRES_LIBS      = libpthread libc_support_misc # gethostname() -> uname()
REQUIRES_LIBS     += zlib
DEFINES            = -DHAVE_CONFIG_H=1 -DBUILDING_LIBCURL

CONTRIB_INCDIR     = curl/contrib/include
PRIVATE_INCDIR     = $(SRC_DIR)/.. $(SRC_DIR)/../contrib/lib

include $(PKGDIR)/lib/contrib/lib/Makefile.inc
SRC_C = $(addprefix ../contrib/lib/, $(CSOURCES))

include $(L4DIR)/mk/lib.mk
