DC := ldc2
CC := gcc

DOBJS := dsrc.o
COBJS := stub.o


obj-m += dlang_module.o
dlang_module-y := $(DOBJS) $(COBJS) 


KERNELDIR := /lib/modules/$(shell uname -r)/build


all:
	$(MAKE) -C $(KERNELDIR) M=$(shell pwd) modules
	$(shell touch .dsrc.o.cmd)

clean:
	$(MAKE) -C $(KERNELDIR) M=$(shell pwd) clean

%.o: %.d
	$(DC) -c $< -betterC -of=$@
	