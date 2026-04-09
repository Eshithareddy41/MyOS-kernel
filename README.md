MyOS Kernel

A Minimal Bare-Metal Educational Operating System with Round Robin Scheduling Demo
Overview

MyOS is a minimal x86 bare-metal operating system prototype developed for an Operating Systems course project. The system boots directly through BIOS, loads a custom kernel from disk, and demonstrates a simple Round Robin CPU scheduling simulation in real mode.
Project Domain

This project belongs to the Hello World Bare-Metal OS category, extended with an additional feature: a simple CPU scheduling demonstration.
Features

    Custom bootloader written in x86 Assembly

    BIOS-based disk loading of kernel into memory

    Real-mode kernel execution at memory address 0x1000

    Text output using BIOS video interrupt INT 10h

    Simple Round Robin scheduling demonstration

    Multiple tasks executed in cyclic order

    QEMU-based testing and execution

System Architecture

BIOS
↓
Bootloader (boot.asm)
↓
Kernel loaded from disk
↓
Kernel execution (kernel.asm)
↓
Round Robin Scheduler
↓
Task 1 → Task 2 → Task 3

Scheduling Feature

The added feature in this project is a simple Round Robin CPU scheduling simulation.

The scheduler repeatedly calls three predefined tasks in cyclic order:

    Task 1

    Task 2

    Task 3

This demonstrates the core idea of fair time-sharing among tasks in an educational and simplified way.
Files

    boot.asm — bootloader code

    kernel.asm — main kernel logic

    scheduler.asm — round robin scheduler

    task.asm — individual task definitions

    Makefile — build and execution automation

    .gitignore — excludes generated files

Build and Run

make
make run

Expected Output

B
Round Robin Scheduler Start
Running one scheduler cycle...
[Task 1] Running
[Task 2] Running
[Task 3] Running
...
Scheduling Finished

Educational Value

This project demonstrates:

    BIOS boot process

    boot sector programming

    kernel loading from disk

    basic real-mode kernel execution

    simplified CPU scheduling logic

Limitations

    Runs in 16-bit real mode

    Scheduling is cooperative and simulated

    No interrupts, context switching, or protected mode

    No file system or memory management subsystem yet

Future Work

    keyboard input handling

    interrupt-based scheduling

    timer-driven preemption

    VGA text mode driver

    protected mode support
