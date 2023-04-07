
image=boot/boot boot/loader

all: $(image)

boot/boot:
	gcc -o boot boot/b1.c

boot/loader:
	gcc -o loader boot/b1.c

.PHONY: clean

clean:
	rm -rf *.o