.PHONY: all hello write create_file clean

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

READ_BIN_DIR = bin/read
READ_BIN_FILE = bin/read/main
READ_OBJECT_FILE = bin/read/read.o
READ_SRC_FILES = src/read/read.asm

CREATE_FILE_BIN_DIR = bin/create_file
CREATE_FILE_BIN_FILE = bin/create_file/main
CREATE_FILE_OBJECT_FILE = bin/create_file/create_file.o
CREATE_FILE_SRC_FILES = src/create_file/create_file.asm

all:
				@printf "available commands:\n"
				@printf "\tmake hello       - to assemble the 'Hello, World' program\n"
				@printf "\tmake write       - to assemble the write program\n"
				@printf "\tmake read        - to assemble the read program\n"
				@printf "\tmake create_file - to assemble the create file program\n"
				@printf "\tmake clean       - to remove the contents of the bin dir\n"

hello: $(HELLO_SRC_FILES)
				mkdir -p $(HELLO_BIN_DIR)
				$(ASM) $(FLAGS) $(HELLO_SRC_FILES) -o $(HELLO_OBJECT_FILE)
				$(LINKER) $(HELLO_OBJECT_FILE) -o $(HELLO_BIN_FILE)

write: $(WRITE_SRC_FILES)
				mkdir -p $(WRITE_BIN_DIR)
				$(ASM) $(FLAGS) $(WRITE_SRC_FILES) -o $(WRITE_OBJECT_FILE)
				$(LINKER) $(WRITE_OBJECT_FILE) -o $(WRITE_BIN_FILE)

read: $(READ_SRC_FILES)
				mkdir -p $(READ_BIN_DIR)
				$(ASM) $(FLAGS) $(READ_SRC_FILES) -o $(READ_OBJECT_FILE)
				$(LINKER) $(READ_OBJECT_FILE) -o $(READ_BIN_FILE)

create_file: $(CREATE_FILE_SRC_FILES)
				mkdir -p $(CREATE_FILE_BIN_DIR)
				$(ASM) $(FLAGS) $(CREATE_FILE_SRC_FILES) -o $(CREATE_FILE_OBJECT_FILE)
				$(LINKER) $(CREATE_FILE_OBJECT_FILE) -o $(CREATE_FILE_BIN_FILE)

clean:
				rm -rfv $(BIN_DIR)/*
