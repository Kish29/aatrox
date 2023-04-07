image = boot loader

all: $(image)

boot: boot.s
	nasm boot.s -o boot

loader: loader.s
	nasm loader.s -o loader

.PHONY: clean

clean:
	rm -rf boot loader