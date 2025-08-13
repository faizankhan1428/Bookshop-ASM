# Bookshop-ASM

This is a simple bookshop application written in Assembly language. The program provides a text-based interface for users to browse and "purchase" books from different categories.

## Features

* **Main Menu**: Displays a welcome message and a main menu with five book categories.
* **Book Categories**: The categories include:
    * Story Books
    * Science Fiction
    * Historical Fiction
    * Poetry
    * Autobiography
* **Book Selection**: Each category lists five specific book titles for the user to choose from.
* **Transaction Confirmation**: After a selection, the program displays a "Book transaction successfully!" message.
* **Navigation**: Users can choose to return to the main menu or exit the program.

## How to Compile and Run

This program requires an 80386 or later processor and an assembler like TASM (Turbo Assembler).

1.  **Assemble the code**:
    ```bash
    tasm l.asm
    ```

2.  **Link the object file**:
    ```bash
    tlink l.obj
    ```

3.  **Run the executable**:
    ```bash
    l.exe
    ```

## Project Structure

* `l.asm`: The main source code file for the bookshop application.
* `README.md`: This file.
* `LICENSE`: The license for this project.
* `.gitignore`: Specifies files to be ignored by Git.

## Author

Your Name
