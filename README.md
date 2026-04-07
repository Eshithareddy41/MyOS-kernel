MyOS Kernel 

A minimal x86 Operating System built from scratch using Assembly language.
This project demonstrates the complete boot process from BIOS to kernel execution.

---
Overview

This project implements a simple educational operating system that:

* Boots directly from BIOS
* Loads a custom bootloader
* Loads a kernel from disk into memory
* Transfers execution control to the kernel
* Displays output using BIOS interrupts

---

System Architecture

```
BIOS
 ↓
Bootloader (boot.asm)
 ↓
Loads kernel from disk
 ↓
Kernel (kernel.asm)
 ↓
Displays output on screen
```

---

 Components

🔹 Bootloader (`boot.asm`)

* Written in x86 Assembly (16-bit)
* Loaded by BIOS at memory address `0x7C00`
* Loads kernel sectors from disk into memory (`0x1000`)
* Transfers control to kernel

---
🔹 Kernel (`kernel.asm`)

* Loaded at memory address `0x1000`
* Displays message using BIOS interrupt `0x10`
* Demonstrates basic execution of OS kernel

---

🔹 Makefile

* Automates build process
* Combines bootloader and kernel into a bootable image
* Runs OS using emulator

---
 Build and Run
  Requirements

* NASM (assembler)
* GCC (optional for future extensions)
* QEMU emulator

 Build OS

```bash
make
```

 Run OS

```bash
make run
```

---
 Project Structure

```
MyOS-kernel/
├── boot.asm
├── kernel.asm
├── Makefile
├── README.md
└── .gitignore
```

---
 Concepts Covered

* BIOS boot process
* Boot sector programming (512 bytes)
* Disk sector loading using BIOS interrupt (`INT 13h`)
* Text output using BIOS interrupt (`INT 10h`)
* Memory addressing and segmentation
* Low-level system programming


