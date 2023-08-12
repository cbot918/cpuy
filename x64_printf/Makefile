NAME=x64_printf

run: $(NAME)
	./$(NAME)

$(NAME):$(NAME).o
	gcc -fPIE -nostartfiles -o $(NAME) $(NAME).o

$(NAME).o: $(NAME).asm
	nasm -felf64 -o $(NAME).o $(NAME).asm