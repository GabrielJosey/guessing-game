//  main.swift
//  GuessingGame
//
//  Created by Gabriel Josey on 12/21/17.
//  Copyright © 2017 Gabriel Josey. All rights reserved.

import Foundation

//  the playAgain variable is for the repeat loop to decide if the player wants to play again
var playAgain = false

var guessCount = 0
var guessesLeft = 5
let tries = 5

// User Enters Name
print("Please enter your name.")
var userName = readLine()!

//User is Welcomed and sets how high they would like to guess
print("Welcome to the guessing game, \(userName). You have \(guessesLeft) guesses left.")
print("Between 1 and what number would you like to guess?")
var upperValue = Int(readLine()!)

// random number is generated
var random = Int(arc4random_uniform(UInt32(Int(upperValue!)) + 1))

// User can now enter their guesses
print("Guess a number between 1 and \(upperValue!)")

// Never did anything with "repeat". Might not work with it in the code now but if removed it would. Would also have to get rid of the variable "playAgain"

    while guessCount <= tries {
        let guess = Int(readLine()!)
        // Put first
        if guess == nil {
            //prevents user from entering an invalid answer
            print("Please make sure your guess is an integer.")
        } else if guess! > random {
            print("Too high. Try again. You have \(guessesLeft) guesses left.")
            guessCount += 1
            guessesLeft -= 1
        } else if guess! < random {
            print("Too low. Bump it up. You have \(guessesLeft) guesses left.")
            guessCount += 1
            guessesLeft -= 1
        } else if guess! == random {
            print("Wow, \(userName)! Your a mind reader! The number was \(random)! Would you like to play again?")
        }
    
    }
print("Stink... so close. The number was actually \(random).")



