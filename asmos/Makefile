NAME=myfirst
QEMU=qemu-system-i386


# mkisofs -o myfirst.iso -b myfirst.flp cdiso/

run: $(NAME).flp
	$(QEMU) -nographic -drive format=raw,file=$(NAME).flp

$(NAME).flp: $(NAME).bin
	dd status=noxfer conv=notrunc if=$(NAME).bin of=$(NAME).flp

$(NAME).bin: $(NAME).asm
	nasm -f bin -o $(NAME).bin $(NAME).asm

.PHONT: $(NAME).flp $(NAME).bin


