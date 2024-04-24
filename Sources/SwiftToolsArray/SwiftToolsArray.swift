//
//  File.swift
//  
//
//  Created by Angelos Staboulis on 24/4/24.
//

import Foundation
public class SwiftToolsArray{
    public init(){}
    public func differenceDiagonal(numbers:[[Int]])->Int{
        var col1 = 0
        var col2 = numbers.count-1
        var sumDiagonal1 = 0
        var sumDiagonal2 = 0
        for row in 0..<numbers.count{
            if col1 < numbers.count{
                sumDiagonal1 = sumDiagonal1 + numbers[row][col1]
                col1 = col1 + 1
            }
            if col2 >= 0 {
                sumDiagonal2 = sumDiagonal2 + numbers[row][col2]
                col2 = col2 - 1
            }
            
        }
        return abs(sumDiagonal2 - sumDiagonal1)
    }
    public func addArrays<T:Numeric>(source:[T],destination:[T])->[T]{
        var sumArray:[T] = []
        for item in 0..<source.count{
            sumArray.append(source[item]+destination[item])
        }
        return sumArray
    }
    public func subArrays<T:Numeric>(source:[T],destination:[T])->[T]{
        var subArray:[T] = []
        for item in 0..<source.count{
            subArray.append(source[item]-destination[item])
        }
        return subArray
    }
    public func multiArrays<T:Numeric>(source:[T],destination:[T])->[T]{
        var multiArray:[T] = []
        for item in 0..<source.count{
            multiArray.append(source[item]*destination[item])
        }
        return multiArray
    }
    public func removeDuplicates(array:[AnyHashable])->Array<any Numeric>{
        let newArray = Array(Set(array))
        var returnArray = Array<any Numeric>()
        for item in newArray{
            returnArray.append(item as! (any Numeric))
        }
        return returnArray
    }
}
