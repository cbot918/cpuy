NAME=disk_images/mikeos
QEMU=qemu-system-i386


# mkisofs -o myfirst.iso -b myfirst.flp cdiso/

run: $(NAME).flp
	$(QEMU) -nographic -drive format=raw,file=$(NAME).flp