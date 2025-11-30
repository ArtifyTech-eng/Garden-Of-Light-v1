# Contributing to The Garden of Light

Thank you for your interest in contributing to **The Garden of Light**, a text-based adventure game written in x64 Assembly for Windows!

We welcome contributions ranging from story expansions to code improvements.

## 📝 How to Contribute

### 1. Find an Area to Help

You can contribute in several ways:

* **Story & Content:** Expanding existing narrative paths, fixing typos in messages (`msgX`), or adding entirely new endings.
* **Code Refactoring:** Improving code efficiency, structure, or commenting (e.g., creating more structured functions for input/output).
* **Bug Reports:** Identifying and reporting issues (e.g., unexpected exits, logic errors in path jumps).
* **Documentation:** Improving the `README.md` or adding more detailed explanations of the Assembly routines.

### 2. Setting up Your Development Environment

To work on this project, you will need:

* **Assembler:** [NASM (Netwide Assembler)](https://www.nasm.us/)
* **Linker:** [GoLink](http://gregd.f2o.org/gregd-soft/golink.html) (or a compatible PE64 linker)
* **Operating System:** Windows (64-bit)

### 3. Build Process

The game is compiled and linked using the following commands:

1.  **Assemble the Source:**
    ```bash
    nasm -f win64 GardenOfLight.asm -o GardenOfLight.obj
    ```
2.  **Link the Object File:**
    ```bash
    golink /entry main GardenOfLight.obj kernel32.dll
    ```
    This creates the final executable: `GardenOfLight.exe`.

### 4. Making a Pull Request (PR)

1.  **Fork** the repository.
2.  **Clone** your forked repository to your local machine.
3.  Create a new branch for your contribution:
    ```bash
    git checkout -b feature/your-awesome-feature
    ```
4.  Make your changes and ensure the game builds and runs without errors.
5.  **Commit** your changes with a clear and descriptive message:
    ```bash
    git commit -m "feat: Added new 'Heroic Ending' path"
    ```
6.  **Push** your branch to your forked repository.
    ```bash
    git push origin feature/your-awesome-feature
    ```
7.  Open a **Pull Request** against the `main` branch of the original repository.

   Thanks!
