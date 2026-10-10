# Alkaline OS — bootable starter

Alkaline OS is a tiny hobby operating-system project. This starter creates a **real, bootable x86 BIOS disk image** that prints a message and then halts. It is the first boot milestone, not a modern desktop or Linux replacement.

## Important for iPad users

An iPad A16 uses ARM hardware and iPadOS. This starter targets **x86 BIOS inside an emulator**, so it will not boot natively on the iPad and will not modify iPadOS. You can edit these files on your iPad and build/run them in a Linux development environment or a suitable x86 emulator.

## Build on Linux

Install NASM and QEMU using your Linux environment's package manager, then run:

```sh
./build.sh
```

This creates `build/alkaline-os.img`, a 512-byte boot sector.

Run it with QEMU:

```sh
qemu-system-i386 -drive format=raw,file=build/alkaline-os.img
```

Expected output:

```text
Alkaline OS
Booted successfully!
This is the first step.
```

## What's included

- `src/boot.asm` — a 512-byte BIOS boot sector
- `build.sh` — assembles the boot sector
- `Makefile` — convenient build and run targets
- `docs/NEXT_STEPS.md` — development roadmap

## Current limitations

- Legacy x86 BIOS only; not native iPad software
- No keyboard input, filesystem, networking, memory manager, or GUI yet
- YouTube cannot run in this tiny OS; that would require a much larger OS and browser stack
- This project does not access or modify iPadOS system partitions

## Roadmap

See [docs/NEXT_STEPS.md](docs/NEXT_STEPS.md).
