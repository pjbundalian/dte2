#!/bin/bash

# Check for 6 command line arguments
if [ "$#" -ne 6 ]; then
    echo "Please provide exactly 6 numbers as command line arguments."
    exit 1
fi

# Assign command line arguments to variables
num1=$1
num2=$2
num3=$3
num4=$4
num5=$5
num6=$6

echo "Select an operation to perform with the numbers: $num1, $num2, $num3, $num4, $num5, $num6"
echo "1) Perform subtraction and show output on screen, comma separated."
echo "2) Perform multiplication and store result in a JSON file."
echo "3) Pick randomly a number and show it on screen."
echo "4) Print sorted (highest to lowest) array/list numbers."
echo "5) Print sorted (lowest to highest) array/list numbers."
read -p "Enter your choice (1-5): " choice

case $choice in
    1)
        # Perform subtraction
        result=$(($num1 - $num2 - $num3 - $num4 - $num5 - $num6))
        echo "$num1, $num2, $num3, $num4, $num5, $num6, Result: $result"
        ;;
    2)
        # Perform multiplication
        multiplication_result=$(($num1 * $num2 * $num3 * $num4 * $num5 * $num6))
        echo "{\"InputNumber1\": $num1, \"InputNumber2\": $num2, \"InputNumber3\": $num3, \"InputNumber4\": $num4, \"InputNumber5\": $num5, \"InputNumber6\": $num6, \"Multiplication\": $multiplication_result}" > multiplication_result.json
        echo "Multiplication result stored in multiplication_result.json"
        ;;
    3)
        # Pick randomly a number
        numbers=($num1 $num2 $num3 $num4 $num5 $num6)
        random_number=${numbers[$RANDOM % ${#numbers[@]}]}
        echo "Randomly selected number: $random_number"
        ;;
    4)
        # Print sorted (highest to lowest) array/list numbers
        sorted_numbers=($(echo "$@" | tr ' ' '\n' | sort -nr))
        echo "Sorted (highest to lowest): ${sorted_numbers[*]}"
        ;;
    5)
        # Print sorted (lowest to highest) array/list numbers
        sorted_numbers=($(echo "$@" | tr ' ' '\n' | sort -n))
        echo "Sorted (lowest to highest): ${sorted_numbers[*]}"
        ;;
    *)
        echo "Invalid choice. Please select a number between 1 and 5."
        ;;
esac
