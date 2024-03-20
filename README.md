# Running the_script.sh

This guide describes how to use the `the_script.sh` Bash script. The script takes six consecutive numbers as command line arguments and offers a menu for performing various operations with these numbers.

## Prerequisites

- Bash shell (commonly available on Linux and macOS)
- Permission to execute scripts

## Getting Started

First, ensure you have the `the_script.sh` script in your desired directory. This script requires six numerical arguments to function correctly.

## Making the Script Executable

Before running the script, you must make it executable. Open a terminal, navigate to the directory containing `the_script.sh`, and run:

```bash
cd dte2
chmod +x the_script.sh
```

## Running the Script

Execute the script by providing six numbers as arguments. Here's an example command:

```bash
./the_script.sh 1 2 3 4 5 6
```

After execution, the script will display a menu with the following options:

1. Perform subtraction and show output on screen, comma separated.
2. Perform multiplication and store result in a JSON file.
3. Pick randomly a number and show it on screen.
4. Print sorted (highest to lowest) array/list numbers.
5. Print sorted (lowest to highest) array/list numbers.

Enter the number corresponding to your desired operation when prompted.

## Menu Operations

- **Option 1**: Subtracts the given numbers sequentially and displays the result.
- **Option 2**: Multiplies the given numbers and saves the result in a `multiplication_result.json` file.
- **Option 3**: Randomly selects one of the provided numbers and displays it.
- **Option 4**: Sorts and displays the numbers from highest to lowest.
- **Option 5**: Sorts and displays the numbers from lowest to highest.
