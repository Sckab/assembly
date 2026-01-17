ASM = nasm
LINKER = ld
FLAGS = -f elf64
OBJECT_FILE = bin/hello.o
BIN_DIR = bin
BIN_FILE = bin/hello
SRC_FILES = src/hello.asm

$(BIN_FILE): $(SRC_FILES)
				mkdir -p $(BIN_DIR)
				$(ASM) $(FLAGS) $< -o $(OBJECT_FILE)
				$(LINKER) $(OBJECT_FILE) -o $(BIN_FILE)

clean:
				rm -rfv $(BIN_DIR)/*
