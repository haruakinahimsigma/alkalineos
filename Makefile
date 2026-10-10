.PHONY: all clean run

all:
	./build.sh

run: all
	qemu-system-i386 -drive format=raw,file=build/alkaline-os.img

clean:
	rm -rf build
