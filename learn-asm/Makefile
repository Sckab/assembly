.PHONY: all hello clean

ASM = nasm
LINKER = ld
FLAGS = -f elf64
BIN_DIR = bin
HELLO_BIN_DIR = bin/hello
HELLO_BIN_FILE = bin/hello/main
HELLO_OBJECT_FILE = bin/hello/hello.o
HELLO_SRC_FILES = src/hello/hello.asm

all:
				@printf "available commands:\n"
				@printf "\tmake hello - to assemble the 'Hello, World' program\n"
				@printf "\tmake clean - to remove the contents of the bin dir\n"

hello: $(HELLO_SRC_FILES)
				mkdir -p $(HELLO_BIN_DIR)
				$(ASM) $(FLAGS) $(HELLO_SRC_FILES) -o $(HELLO_OBJECT_FILE)
				$(LINKER) $(HELLO_OBJECT_FILE) -o $(HELLO_BIN_FILE)

clean:
				rm -rfv $(BIN_DIR)/*