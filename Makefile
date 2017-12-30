CC = /home/midas/openwrt_widora/staging_dir/toolchain-mipsel_24kec+dsp_gcc-4.8-linaro_uClibc-0.9.33.2/bin/mipsel-openwrt-linux-gcc

APP = autorecord4

INCLUDES += -I/.
INCLUDES += -I/home/midas/openwrt_widora/build_dir/target-mipsel_24kec+dsp_uClibc-0.9.33.2/alsa-lib-1.0.28/include 
LDFLAGS  += -L.
LDFLAGS  += -L/home/midas/openwrt_widora/build_dir/target-mipsel_24kec+dsp_uClibc-0.9.33.2/alsa-lib-1.0.28/ipkg-install/usr/lib
LIBS	 += -lasound -lm  -lshine

$(APP): $(APP).c
	$(CC) $(INCLUDES) $(LDFLAGS) $(LIBS) -o $(APP) $(APP).c

PHONY:all
all: $(APP)

clean:
	rm -rf $(APP)
	
