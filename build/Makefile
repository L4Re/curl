PKGDIR ?= ..
L4DIR  ?= $(PKGDIR)/../..

TARGET             = curl
REQUIRES_LIBS      = libcurl
REQUIRES_LIBS     += libc_be_socket_lwip lwip_virtio_net lwip_ifconfig_env
DEPENDS_PKGS       = $(REQUIRES_LIBS)

DEFINES            = -DHAVE_CONFIG_H=1
PRIVATE_INCDIR     = $(SRC_DIR)/../lib $(SRC_DIR)/../lib/contrib/lib

include $(PKGDIR)/lib/contrib/src/Makefile.inc
SRC_C = $(addprefix ../lib/contrib/src/, $(CURL_CFILES) $(CURLX_CFILES))

include $(L4DIR)/mk/prog.mk
