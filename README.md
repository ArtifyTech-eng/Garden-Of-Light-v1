# The Garden of Light

A text-based adventure game written entirely in **x64 Assembly Language** for Windows.

Take a walk through a nice day, make choices, and see where your decisions lead you—from finding inner peace in your garden to discovering darker, less pleasant endings.

## Features

* **Pure Assembly:** Built from the ground up using NASM and the Windows x64 ABI.
* **Multiple Narrative Paths:** Explore several branching storylines and unique endings (Good, Bad, and Tragic).
* **Console I/O:** Utilizes direct Windows API calls (`WriteConsoleA`, `ReadConsoleA`, `Sleep`) for simple, low-level interaction.


### Play the Game

The easiest way to play is to download the latest executable from the releases page or through the main branch itself.

1.  Download `GardenOfLight.exe`.
2.  Run the executable in a Windows environment.

### Build from Source

If you want to compile the game yourself, you will need the following tools:

1.  **NASM** (Netwide Assembler)
2.  **GoLink** (or any compatible PE64 linker)

#### Build Instructions

```bash
# 1. Assemble the source file into an object file
nasm -f win64 GardenOfLight.asm -o GardenOfLight.obj

# 2. Link the object file with the kernel32 library
# (Note: /entry main sets the entry point for the executable)
golink /entry main GardenOfLight.obj kernel32.dll

# The final executable, GardenOfLight.exe, will be created in the directory.
