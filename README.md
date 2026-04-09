MyOS Kernel

A Minimal Bare-Metal Educational Operating System with Round Robin Scheduling Demonstration

Overview

MyOS is a minimal bare-metal operating system prototype developed as part of an Operating Systems course project. The system boots directly from BIOS, loads a custom kernel from disk, and demonstrates a simplified Round Robin CPU scheduling mechanism in real mode.

The goal of this project is to understand low-level system behavior, including bootstrapping, kernel execution, and basic task scheduling without relying on any existing operating system.
Project Domain

This project falls under the "Hello World Bare-Metal OS" category and extends it by implementing a CPU scheduling feature, making it more than a basic bootable system.

Features

    Custom bootloader written in x86 Assembly

    BIOS-based disk sector loading using INT 13h

    Kernel execution in real mode at memory address 0x1000

    Text output using BIOS interrupt INT 10h

    Modular kernel design using multiple assembly files

    Round Robin scheduling simulation

    Execution of multiple tasks in cyclic order

    QEMU-based testing and emulation

    Structured and readable kernel output

System Architecture

BIOS
 ↓
Bootloader (boot.asm)
 ↓
Loads kernel from disk
 ↓
Kernel (kernel.asm)
 ↓
Scheduler (scheduler.asm)
 ↓
Tasks (task.asm)

Scheduling Feature

The primary enhancement in this project is a simple Round Robin scheduling demonstration.

The scheduler cyclically executes three tasks:

    Task 1

    Task 2

    Task 3

Each task prints its execution message to the screen, illustrating the concept of fair CPU time sharing among processes.

Project Structure

MyOS-kernel/
├── boot.asm         
├── kernel.asm       
├── scheduler.asm    
├── task.asm         
├── Makefile        
├── README.md       
└── .gitignore     

Build and Run
Requirements

    NASM (Assembler)

    QEMU (Emulator)

    GNU Make

Build

make

Run

make run

Concepts Covered

This project demonstrates key Operating Systems concepts:

    Boot sector programming

    BIOS interrupt usage (INT 10h, INT 13h)

    Kernel loading and execution

    Memory addressing in real mode

    Modular kernel design

    Basic CPU scheduling (Round Robin concept)

Limitations

    Runs only in 16-bit real mode

    No actual process context switching

    No memory management or paging

    No file system support

    Scheduling is simulated, not interrupt-driven

Future Enhancements

    Keyboard input handling

    Timer-based scheduling using interrupts

    VGA text mode driver (direct memory access)

    Transition to protected mode

    Simple command-line interface

Team Contributions

    Bootloader design and disk loading logic

    Kernel development and output routines

    Scheduler and task execution implementation

    Documentation and testing using QEMU

Educational Value

This project provides hands-on experience with:

    Low-level programming without OS support

    Understanding how operating systems start and run

    Implementing core OS concepts from scratch

Conclusion

MyOS demonstrates how a minimal operating system can be built from scratch using assembly language. By extending a basic bootable system with a scheduling mechanism, the project highlights both foundational and intermediate OS concepts in a clear and educational manner.

