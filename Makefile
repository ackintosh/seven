run :
	./z_tools/nask boot.nas boot.img
	cp boot.img ./z_tools/qemu/fdimage0.bin
	make -C ./z_tools/qemu
