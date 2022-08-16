//
//  main.swift
//  RandomPasswordGenerator
//
//  Created by Simeon on 26.07.22.
//

import Foundation

struct RandomPasswordGenerator {
    

    var alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i","j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    var alphabetCap = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    var numbers = ["1", "2", "3", "4" ,"5" ,"6" ,"7", "8", "9"]
    var specialChars = ["!", "@", "#", "$", "%", "&"]
    var phrases = ["Pinky", "Star", "Forest",
                   "Birds", "Red", "Tree",
                   "Water", "Lake", "McDonalds",
                   "Sky", "Goblins", "Duck",
                   "Redneck", "Gun", "Plus",
                   "Minus", "Multiplying", "Computer"]
    
    //var passLenght = 8
    //var password: [Any] = []
    var charCategory = Int(arc4random_uniform(UInt32(3)))
    
    mutating func generatePassword(with lenght: Int) -> String {
        var password = ""
        for _ in 1...lenght {
           
            if charCategory == 0 {
                password.append(alphabet.randomElement()!)
            } else if charCategory == 1 {
                password.append(alphabetCap.randomElement()!)
            } else if charCategory == 2 {
                password.append(numbers.randomElement()!)
            } else if charCategory == 3 {
                password.append(specialChars.randomElement()!)
            }
            charCategory = Int(arc4random_uniform(3))
        }
        return password
    }
    mutating func generatePasswordWithPhrases(with words: Int) -> String {
        var password = ""
        
        for i in 1...words {
            password.append(phrases.randomElement()!)
            if i < words {
                password.append("-")

            }
        }
        return password
    }
}
var myNewPass = RandomPasswordGenerator()
print(myNewPass.generatePasswordWithPhrases(with: 3))

                   
    
    
    


