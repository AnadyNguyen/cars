#! /bin/bash
# cars.sh
# Name: Andy Nguyen
#CPSC298

# File that stores car data
CAR_FILE="my_old_cars"

# Loop until the user chooses to quit
while true; do
  echo "----------------------------------"
  echo "Car Inventory Menu"
  echo "1. Add a car"
  echo "2. List the cars"
  echo "3. Quit"
  echo "----------------------------------"
  read -rp "Please enter your choice (1-3): " CHOICE

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
done
