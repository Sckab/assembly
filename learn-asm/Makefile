.PHONY: all hello write clean

ASM = nasm
LINKER = ld
FLAGS = -f elf64
BIN_DIR = bin

HELLO_BIN_DIR = bin/hello
HELLO_BIN_FILE = bin/hello/main
HELLO_OBJECT_FILE = bin/hello/hello.o
HELLO_SRC_FILES = src/hello/hello.asm

WRITE_BIN_DIR = bin/write
WRITE_BIN_FILE = bin/write/main
WRITE_OBJECT_FILE = bin/write/write.o
WRITE_SRC_FILES = src/write/write.asm

all:
				@printf "available commands:\n"
				@printf "\tmake hello - to assemble the 'Hello, World' program\n"
				@printf "\tmake write - to assemble the write program\n"
				@printf "\tmake clean - to remove the contents of the bin dir\n"

hello: $(HELLO_SRC_FILES)
				mkdir -p $(HELLO_BIN_DIR)
				$(ASM) $(FLAGS) $(HELLO_SRC_FILES) -o $(HELLO_OBJECT_FILE)
				$(LINKER) $(HELLO_OBJECT_FILE) -o $(HELLO_BIN_FILE)

write: $(WRITE_SRC_FILES)
				mkdir -p $(WRITE_BIN_DIR)
				$(ASM) $(FLAGS) $(WRITE_SRC_FILES) -o $(WRITE_OBJECT_FILE)
				$(LINKER) $(WRITE_OBJECT_FILE) -o $(WRITE_BIN_FILE)

clean:
				rm -rfv $(BIN_DIR)/*
