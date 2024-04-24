//
//  File.swift
//  
//
//  Created by Angelos Staboulis on 24/4/24.
//
import Foundation
public class SwiftToolsString{
    public init(){}
    func reverseString(source:String)->String{
        var reversedString = String()
        for character in stride(from: source.count-1, to: -1, by: -1){
            let getIndex = source.index(source.startIndex, offsetBy: character)
            reversedString.append(source[getIndex])
        }
        return reversedString
    }
    func left(source:String,start:Int,end:Int)->String{
        var leftString = String()
        let firstLetter = source.index(source.startIndex, offsetBy: start)
        let endLetter = source.index(source.startIndex, offsetBy: end)
        leftString.append(contentsOf:source[firstLetter...endLetter])
        return leftString
    }
    func right(source:String,start:Int)->String{
        var rightString = String()
        let firstLetter = source.index(source.endIndex, offsetBy: -start)
        rightString.append(contentsOf:source[firstLetter..<source.endIndex])
        return rightString
    }
    func substring(source:String,start:Int,end:Int)->String{
        var newString = String()
        let firstLetter = source.index(source.startIndex, offsetBy: start)
        let endLetter = source.index(source.endIndex, offsetBy: -end)
        newString.append(contentsOf:source[firstLetter..<endLetter])
        return newString
    }
    func asciiCharacterValue(value:Character)->UInt8{
        return value.asciiValue!
    }
    func consonantLetters(source:String)->[Character]{
        return source.filter{$0 == "A" || $0 == "a" || $0 == "I" || $0 == "i" || $0=="E" || $0 == "e" || $0 == "O" || $0 == "o" || $0 == "U" || $0 == "u"}
    }
    func vowelLetters(phrase:String)->[Character]{
        var vowels:[Character] = []
        for item in phrase where item != "A" && item != "a" && item != "I" && item != "i" && item != "E" && item != "e" && item != "O" && item != "o" && item != "U" && item != "u"{
            vowels.append(item)
        }
        return vowels
    }
    
    func findString(source:String,searchString:String)->Bool{
        return [source].contains(where: { value in
            return value.contains(searchString)
        })
    }
    func isPalindrom(s:String)->Bool{
       let palindrom = s.reversed()
       if s.elementsEqual(palindrom){
            return true
        }
        return false
    }
    func checkPhrase(source:String)->(Int,Int,Int){
        var isLetter:Int=0
        var isNumber:Int=0
        var isSpace:Int=0
        
        for character in source where ((character.asciiValue! > 64 && character.asciiValue! < 91) || (character.asciiValue! > 96 && character.asciiValue! < 123))  {
            
            isLetter = isLetter + 1
        }
        for character in source where (character.asciiValue! >= 48 && character.asciiValue! <= 57)  {
            
            isNumber = isNumber + 1
        }
        
        for character in source where (character.asciiValue == 32)  {
            isSpace = isSpace + 1
        }
        return (isLetter,isNumber,isSpace)
    }
}
