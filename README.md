# README for Animals Script

## Author Information
- **Name:** Andy Nguyen
- **Course:** CPSC298
- **Assignment:** HW10 - cars.sh
- **Date:** November 3, 2025

## Program Description
This program prompts the user to either input cars into a file, list out all the cars plus added cars in the file, or exit the program.

## Example Output
If the user enters 1, the program should display:
```
"Enter the year of the car:"
Then, "Enter the make of the car: " after the user inputted the year.
Then, "Enter the model of the car: " after the user inputted the make.
Then after all of that, it prints "Car added successfully!"
If the user enters 2, the program lists all of the cars in the "my_old_cars" file and all the cars the user has added.
```

## Usage
To run the script interactively:
```bash
./cars.sh
```

To test with an input file (for example, `cars-input`):
```bash
./cars.sh < cars-input
```
## How the Script Works
The program starts by prompting the user to enter a choice 1-3. For input #1, it appends the user inputs of car year, make and model to the file "my_old_cars." For #2, it lists all old and appended inputs of the file. For #3, it exits the program. 

## Core Logic Example
```bash
  case $CHOICE in
    1)
      # Add a new car
      read -rp "Enter the year of the car: " YEAR
      read -rp "Enter the make of the car: " MAKE
      read -rp "Enter the model of the car: " MODEL
      echo "${YEAR}:${MAKE}:${MODEL}" >> "$CAR_FILE" 
      echo "Car added successfully!"
      ;;
    2)
      # List cars sorted by year
      echo "----------------------------------"
      echo "Cars in your inventory (sorted by year):"
      sort -n "$CAR_FILE"
      echo "----------------------------------"
      ;;
    3)
      # Quit
      echo "Goodbye!"
      break
      ;;
    *)
      echo "Invalid choice. Please enter 1, 2, or 3."
      ;;
  esac
```

## Testing Results
Any new cars will create a newline because there is no -n on the echo. It only takes 1,2 or 3 as the first input and after that, we can input anything.

## Challenges and Solutions
Realizing I needed to create the old cars file
## Resources
- ChatGPT to explain certain parts of the code to me, and the case slides. Sort -n also came from GPT in order to sort my inputs in order.
## License
This project is part of coursework for Chapman University and is intended for educational purposes.
