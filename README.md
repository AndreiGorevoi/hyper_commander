Hyper Commander

Hyper Commander is a command-line interface (CLI) tool developed as a project for educational purposes through Hyperskill. It provides various system operations and functionalities in a simple menu-driven format.

Features

	1.	OS Info: Display basic operating system information.
	2.	User Info: Show current user information.
	3.	File and Directory Operations: Navigate, manage, and manipulate files and directories.
	4.	Find Executables: Locate and execute system executables.

Usage

To run Hyper Commander, execute the following command in your terminal:

#! env/bin/env bash

Once the application starts, you will see a main menu with the following options:

------------------------------
| Hyper Commander            |
| 0: Exit                    |
| 1: OS info                 |
| 2: User info               |
| 3: File and Dir operations |
| 4: Find Executables        |
------------------------------

Main Menu Options

	•	0: Exit: Exit the application.
	•	1: OS Info: Display the name and operating system type.
	•	2: User Info: Show the current user’s name.
	•	3: File and Dir Operations: Enter the file and directory operations menu.
	•	4: Find Executables: Search for and execute system executables.

File and Directory Operations

When selecting option 3 from the main menu, you will enter the file and directory operations menu. You can navigate and manage files and directories with the following commands:

---------------------------------------------------
| 0 Main menu | 'up' To parent | 'name' To select |
---------------------------------------------------

•	0 Main menu: Return to the main menu.
	•	‘up’: Move to the parent directory.
	•	‘name’: Select a file or directory by entering its name.

Working with Files

When a file is selected, the following operations can be performed:

---------------------------------------------------------------------
| 0 Back | 1 Delete | 2 Rename | 3 Make writable | 4 Make read-only |
---------------------------------------------------------------------

0 Back: Return to the file and directory operations menu.
	•	1 Delete: Delete the selected file.
	•	2 Rename: Rename the selected file.
	•	3 Make writable: Change the file permissions to writable.
	•	4 Make read-only: Change the file permissions to read-only.

Find Executables

When selecting option 4 from the main menu, you can locate and execute system executables:

	1.	Enter the executable name.
	2.	If the executable exists, its location will be displayed.
	3.	Enter arguments to pass to the executable.

Example

To run the tool and see OS information:

	1.	Start Hyper Commander.
	2.	Select option 1 from the main menu.

Educational Purpose

This project was developed as part of the Hyperskill educational platform. It is intended for learning and educational purposes.

License

This project is open-source and available under the MIT License. Feel free to use, modify, and distribute it as you see fit.
