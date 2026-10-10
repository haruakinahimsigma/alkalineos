# Alkaline OS roadmap

## Milestone 1 — boot sector (starter)
- [x] Create a valid 512-byte BIOS boot sector
- [x] Print a startup message
- [x] Halt safely

## Milestone 2 — second-stage loader
- [ ] Load a second-stage program from a virtual disk
- [ ] Move beyond the 512-byte boot-sector limit
- [ ] Add a repeatable QEMU test

## Milestone 3 — kernel
- [ ] Enter 32-bit protected mode, then consider a 64-bit target
- [ ] Add a small freestanding kernel written in C or Rust
- [ ] Set up serial logging for debugging
- [ ] Add basic exception handlers

## Milestone 4 — core features
- [ ] Memory management
- [ ] Interrupt handling and timer
- [ ] Keyboard input
- [ ] A basic shell

## Milestone 5 — user experience
- [ ] Filesystem support
- [ ] Process/task model
- [ ] Graphics and windowing
- [ ] Networking and browser research

## Platform note

The current starter is an x86 legacy-BIOS image intended for an emulator. An iPad A16 is ARM-based and cannot boot this image natively. Development can happen from the iPad using a remote or browser-based Linux workspace without replacing iPadOS.
