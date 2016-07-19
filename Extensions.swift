//
//  Extensions.swift
//
//
//  Created by Flatiron School on 7/19/16.
//
//

import Foundation

extension String
{
    
    func whisper() -> String
    {
        return self.lowercaseString
    }
    
    func shout() ->String
    {
        return self.uppercaseString
    }
    
    var pigLatin : String
    {
        //        var word = self.characters
        //        let firstChar = self.characters.first
        //        word.removeFirst()
        //        if let firstLetter = firstChar
        //        {
        //            word.append(firstLetter)
        //        }
        //convert sentence into an array
        var fourthWord: String = ""
        
        var newArray: [String] = self.componentsSeparatedByString(" ")
        for word in newArray
        {
            var secondWord = word.characters
            var firstChar = secondWord.first
            secondWord.removeFirst()
            if let firstLetter = firstChar
            {
                secondWord.append(firstLetter)
                var thirdWord = String(secondWord)
                thirdWord = thirdWord + "ay"
                thirdWord = thirdWord.capitalizedString
                
                if word == newArray.last
                {
                    fourthWord += thirdWord
                }
                else
                {
                    fourthWord += thirdWord + " "
                }
                
            }
        }
        
        //        var nextWord: String = String(word)
        //        nextWord = nextWord + "ay"
        
        //        print(nextWord)
        return fourthWord
    }
    
    var points : Int
    {
        
        let vowel: [Character] = ["a", "e", "i", "o", "u"]
        let consonants: [Character] = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
        var vowelCounter: Int = 0
        var consonantsCounter: Int = 0
        
        for letter in self.lowercaseString.characters
        {
            if vowel.contains(letter)
            {
                vowelCounter = 2 + vowelCounter
            }
            else if consonants.contains(letter)
            {
                consonantsCounter += 1
            }
        }
        return vowelCounter + consonantsCounter
    }
    
    var unicornLevel: String
    {
        var unicornString = ""
        let deleteSpace = self.stringByReplacingOccurrencesOfString(" ", withString: "")
        
        for _ in deleteSpace.characters
        {
            unicornString.appendContentsOf("🦄")
        }
        
        return unicornString
    }
}

extension Int
{
    func half() -> Int
    {
        let num = self/2
        return num
    }
    
    func isDivisibleBy(num: Int) -> Bool
    {
        if self%num == 0
        {
            return true
        }
        else
        {
            return false
        }
    }
    
    var squared: Int
    {
        return self * self
    }
    
    var halved: Int
    {
        return half()
    }
}
