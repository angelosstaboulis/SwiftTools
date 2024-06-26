// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation
public class SwiftTools{
    public init(){}
    
    public func getCurrentDate()->String{
        let newDate = DateFormatter()
        newDate.dateStyle = .full
        newDate.dateFormat = "EEEE dd.MMMM.yyyy hh:mm:ss"
        return newDate.string(from: Date())
    }
    public func getCurrentTime()->String{
        let newTime = DateFormatter()
        newTime.timeStyle = .medium
        newTime.dateFormat = "hh:mm:ss"
        return newTime.string(from: Date())
    }
    public func digits(number:Int)->Int{
        var digits:[Int] = []
        var getNumber = 0
        getNumber = number
        while(getNumber != 0){
            digits.append(getNumber%10)
            getNumber = getNumber / 10
        }
        var counter = 0
        for digit in digits{
            if digit != 0{
                if number%digit == 0 {
                    counter = counter + 1
                }
           }
        }
        return counter
    }

    func minimumSwaps(arr: [Int]) -> Int {
        let getArray = arr
        var minValue = 0
        var subItem = 0
        for _ in 0..<getArray.count{
            if subItem < getArray.count-1{
                if getArray[subItem] != subItem+1{
                    minValue = (minValue+1)
                }
                subItem = subItem + 1
            }
        }
        return minValue
    }
}
