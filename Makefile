NAME=x64_hello

run: $(NAME)
	./$(NAME)

$(NAME):$(NAME).o
	ld -o $(NAME) $(NAME).o

$(NAME).o: $(NAME).asm
	nasm -felf64 -o $(NAME).o $(NAME).asm