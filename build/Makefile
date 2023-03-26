PKGDIR ?= ..
L4DIR  ?= $(PKGDIR)/../..

TARGET             = curl
REQUIRES_LIBS      = libcurl
REQUIRES_LIBS     += libc_be_socket_lwip lwip_virtio_net lwip_ifconfig_env
DEPENDS_PKGS       = $(REQUIRES_LIBS)

DEFINES            = -DHAVE_CONFIG_H=1
PRIVATE_INCDIR     = $(SRC_DIR)/../lib $(SRC_DIR)/../lib/contrib/lib

include $(PKGDIR)/lib/contrib/src/Makefile.inc
SRC_C  = $(addprefix ../lib/contrib/src/, $(filter-out tool_hugehelp.c,$(CURL_CFILES)) \
	                                  $(CURLX_CFILES))
SRC_C += tool_hugehelp.c

include $(L4DIR)/mk/prog.mk

CPPFLAGS_tool_hugehelp.o += -I$(SRC_DIR)/../lib/contrib/src

tool_hugehelp.c:
	$(VERBOSE)$(CP) $(SRC_DIR)/../lib/contrib/src/tool_hugehelp.c.cvs $@

$(GENERAL_D_LOC): $(PKGDIR)/lib/contrib/src/Makefile.inc
