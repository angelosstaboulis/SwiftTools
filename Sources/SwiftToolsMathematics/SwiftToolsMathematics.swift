//
//  File.swift
//  
//
//  Created by Angelos Staboulis on 24/4/24.
//

import Foundation
public class SwiftToolsMathematics{
    public init(){}
    public func gcd(a:Int,b:Int) -> Int
    {
        let min = min(a,b)
        let max = max(a,b)
        if min == 0 {
            return max
        }else{
            return gcd(a: max-min,b: min)
        }
    }
    public func gcd(numbers:[Int])->Int{
        numbers.reduce(0, gcd)
    }
    public func lcm(a:Int,b:Int)->Int{
        return (a*b)/gcd(a: a,b: b)
    }
    public func lcm(numbers:[Int])->Int{
        return numbers.reduce(1, lcm)
    }
    public func eqFractions(a:String,b:String)->Bool{
        let aArray = a.components(separatedBy: "/")
        let bArray = b.components(separatedBy: "/")
        guard let aNewArray = Int(aArray[0]) else {
            return false
        }
        guard let bNewArray = Int(bArray[1]) else {
            return false
        }
        guard let aNewArray1 = Int(aArray[1]) else {
            return false
        }
        guard let bNewArray1 = Int(bArray[0]) else {
            return false
        }
        let firstResult = aNewArray*bNewArray
        let secondResult = bNewArray1*aNewArray1
        if firstResult == secondResult {
            return true
        }else{
            return false
        }
        
    }
    public func multiplesNumbers(lower:Int,upper:Int,number:Int){
        for item in stride(from: lower, to: upper+number, by: number){
            debugPrint("multiples of \(number) = ",item)
        }
    }
    public func homFractions(a:String,b:String)->(String,String){
        let aArray = a.components(separatedBy: "/")
        let bArray = b.components(separatedBy: "/")
        let ekp = lcm(a: Int(aArray[1]) ?? 0, b: Int(bArray[1]) ?? 0)
        guard let aArrayNew = Int(aArray[0]) else {
            return ("","")
        }
        guard let aArrayNew1 = Int(aArray[1]) else {
            return ("","")
        }
        guard let bArrayNew = Int(bArray[0]) else {
            return ("","")
        }
        guard let bArrayNew1 = Int(bArray[1]) else {
            return ("","")
        }
        let firstFraq = String(format:"%d/%d",ekp / aArrayNew1 * aArrayNew,ekp)
        let secondFraq = String(format:"%d/%d",ekp / bArrayNew1 * bArrayNew,ekp)
        return (firstFraq,secondFraq)
        
    }
    public func addFractions(a:String,b:String)->String{
        let aArray = a.components(separatedBy: "/")
        let bArray = b.components(separatedBy: "/")
        guard let aArrayNew = Int(aArray[0]) else {
            return ("")
        }
        guard let aArrayNew1 = Int(aArray[1]) else {
            return ("")
        }
        guard let bArrayNew = Int(bArray[0]) else {
            return ("")
        }
        return String(format:"%d / %d",aArrayNew + bArrayNew,aArrayNew1)
    }
    public func subFractions(a:String,b:String)->String{
        let aArray = a.components(separatedBy: "/")
        let bArray = b.components(separatedBy: "/")
        guard let aArrayNew = Int(aArray[0]) else {
            return ("")
        }
        guard let aArrayNew1 = Int(aArray[1]) else {
            return ("")
        }
        guard let bArrayNew = Int(bArray[0]) else {
            return ("")
        }
        return String(format:"%d / %d",aArrayNew - bArrayNew,aArrayNew1)
    }
    public func multiFractions(a:String,b:String)->String{
        let aArray = a.components(separatedBy: "/")
        let bArray = b.components(separatedBy: "/")
        guard let aArrayNew = Int(aArray[0]) else {
            return ("")
        }
        guard let aArrayNew1 = Int(aArray[1]) else {
            return ("")
        }
        guard let bArrayNew = Int(bArray[0]) else {
            return ("")
        }
        guard let bArrayNew1 = Int(bArray[1]) else {
            return ("")
        }
        let arithmitis = aArrayNew * bArrayNew
        let paronomastis = aArrayNew1 * bArrayNew1
        let klasma = String(format:"%d / %d",arithmitis,paronomastis)
        return klasma
    }
    public func multiFractions(array:[String])->String{
        var arithmitisResult:Int = 1
        var paronomastisResult:Int = 1
        for item in 0..<array.count{
            let arithmitis = array[item].components(separatedBy: "/")
            arithmitisResult = arithmitisResult * (Int(arithmitis[0]) ?? 0)
            paronomastisResult = paronomastisResult * (Int(arithmitis[1]) ?? 0)
        }
        return String(format:"%d / %d",arithmitisResult,paronomastisResult)
    }
}
