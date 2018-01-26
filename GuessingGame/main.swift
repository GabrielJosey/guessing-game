//  main.swift
//  GuessingGame
//
//  Created by Gabriel Josey on 12/21/17.
//  Copyright © 2017 Gabriel Josey. All rights reserved.

import Foundation

//  the playAgain variable is for the repeat loop to decide if the player wants to play again
var playAgain = true

var guessCount = 0
var guessesLeft = 5
let tries = 5

// User Enters Name
print("Please enter your name.")
var userName = readLine()!

// Never did anything with "repeat". Might not work with it in the code now but if removed it would. Would also have to get rid of the variable "playAgain"
func game() {
    
    //User is Welcomed and sets how high they would like to guess
    print("Welcome to the guessing game, \(userName). You have \(guessesLeft) guesses left.")
    print("Between 1 and what number would you like to guess?")
    let upperValue = Int(readLine()!)
    
    // random number is generated
    let random = Int(arc4random_uniform(UInt32(Int(upperValue!)) + 1))
    
    // User can now enter their guesses
    print("Guess a number between 1 and \(upperValue!)")
    
    while guessCount < tries {
        let guess = Int(readLine()!)
        
//        if let guess = readLine() {
//            if let guessAsInt = Int(guess) {
//                if guessAsInt > random {
//                    print("Too high. Try again. You have \(guessesLeft) guesses left.")
//                    guessCount += 1
//                    guessesLeft -= 1
//                } else if guessAsInt < random {
//                    print("Too low. Bump it up. You have \(guessesLeft) guesses left.")
//                    guessCount += 1
//                    guessesLeft -= 1
//                } else if guessAsInt == random {
//                    print("Wow, \(userName)! Your a mind reader! The number was \(random)!")
//                } else {
//                    print("Stink... so close. The number was actually \(random).")
//                }
//            } else {
//                print("You need to enter an integer!")
//            }
//        } else {
//            print("You need to enter something!")
//        }
        
        // Put first
        if guess == nil {
            //prevents user from entering an invalid answer
            print("Please make sure your guess is an integer.")
        } else if guess! > random && guessesLeft != 0  {
            guessCount += 1
            guessesLeft -= 1
            print("Your guess was too high. You have \(guessesLeft) guesses left.")
        } else if guess! < random && guessesLeft != 0 {
            guessCount += 1
            guessesLeft -= 1
            print("Your guess was too low. You have \(guessesLeft) guesses left.")
        } else if guess! == random {
            print("Wow, \(userName)! Your a mind reader! The number was \(random)!")
        } else if guessesLeft == 0 {
            print("Stink... so close. The number was actually \(random).")
        }
    
    }
}

game()

while playAgain == true {
    print("Would you like to play again? Type 'y' for yes and 'n' for no.")
    let toPlayOrNotToPlay = readLine()!
    if toPlayOrNotToPlay == "y" {
        guessCount = 0
        guessesLeft = 5
        game()
    } else if toPlayOrNotToPlay == "n" {
        print("Thank you for playing the guessing game.")
        playAgain = false
    }
    
}

// want to add a while loop to be able to repeat the game when user so decides
