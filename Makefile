# Makefile for develop Kernel module in NOVSOM™CVL6F218-S-32-C
# ©EyeLife Finland
#

obj-m += helloEyelife.o

MDIR := $(shell pwd)
KDIR := /home/novtech/Projects/buildroot-2014.08/output/build/linux-custom
CROSS_C = /home/novtech/Projects/buildroot-2014.08/output/host/usr/bin/arm-buildroot-linux-gnueabihf-

all:
	make ARCH=arm CROSS_COMPILE=$(CROSS_C) -C $(KDIR) M=$(MDIR) modules

clean:
	make ARCH=arm CROSS_COMPILE=$(CROSS_C) -C $(KDIR) M=$(MDIR) clean
