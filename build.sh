#!/usr/bin/env sh
set -eu
cd "$(dirname "$0")"

if ! command -v nasm >/dev/null 2>&1; then
  echo "Error: NASM is required. Install it in your Linux workspace."
  exit 1
fi

mkdir -p build
nasm -f bin src/boot.asm -o build/alkaline-os.img

size=$(wc -c < build/alkaline-os.img | tr -d ' ')
if [ "$size" != "512" ]; then
  echo "Error: expected a 512-byte boot sector, got $size bytes."
  exit 1
fi

echo "Built build/alkaline-os.img (512 bytes)."
echo "Run with: qemu-system-i386 -drive format=raw,file=build/alkaline-os.img"
