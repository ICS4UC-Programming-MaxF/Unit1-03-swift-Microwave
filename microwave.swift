/**
 * This program is for a microwave calculator that
 * calculates the time needed to heat 3 types of food
 * (food: sub, pizza, soup) the time is already set
 * (time: sub = 60 seconds, pizza = 45 seconds, soup = 105 seconds)
 * the program asks the user for the item, and then the quantity of it.
 * if its 2 items the time is increased by 50% and if its 3 items the time is increased by 100%
 * it will then display the total time needed to heat the food in seconds and minutes.
 * @author  MF-ROB
 * @version 1.0
 * @since   2026-22-09
 */

import Foundation

// User inputs
print("This program is to calculate the microwave time")
print("Options: sub (1) = 60 seconds, pizza (2) = 45 seconds, soup (3) = 105 seconds")
print("Please enter the item you want to reheat:  ", terminator: "")

// Read and validate the item selection
guard let heatingInput = readLine(), let heating = Int(heatingInput) else {
    print("Error: Please enter a valid numeric value.")
    exit(0)
}

// variable declarations
var baseTime = 0
var itemName = "" // this is for when the user selects an item

// User selected item
switch heating {
case 1:
    baseTime = 60
    itemName = "sub"
case 2:
    baseTime = 45
    itemName = "pizza"
case 3:
    baseTime = 105
    itemName = "soup"
default:
    // error code for unexpected input one
    print("Error: Please enter 1, 2, or 3.")
    exit(0)
}

// Item amount declaration
print("Please enter how many items you wanna reheat:  ", terminator: "")

guard let amountInput = readLine(), let amount = Int(amountInput) else {
    print("Error: Please enter a valid numeric value.")
    exit(0)
}

// the amount of items user wants to reheat
var totalSeconds: Double

switch amount {
case 1:
    totalSeconds = Double(baseTime)
case 2:
    totalSeconds = Double(baseTime) * 1.5
case 3:
    totalSeconds = Double(baseTime) * 2.0
default:
    print("Error: Quantity must be 1, 2, or 3.")
    exit(0)
}

// calculations for the microwave
let roundedSeconds = Int(totalSeconds.rounded())
let minutes = roundedSeconds / 60
let seconds = roundedSeconds % 60

// Displaying the result for it
print()
print("Item: \(itemName) x\(amount)")
print("Total time: \(roundedSeconds) seconds (\(minutes) min \(seconds) sec)")