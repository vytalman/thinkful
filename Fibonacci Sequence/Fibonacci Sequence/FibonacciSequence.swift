//
//  FibonacciSequence.swift
//  Fibonacci Sequence
//
//  Created by Ryan Mesa on 11/10/14.
//  Copyright (c) 2014 Ryan Mesa. All rights reserved.
//

//import Foundation

class FibonacciSequence {
    
    let includesZero: Bool
    var values: [UInt64]
    
    init(maxNumber: UInt64, includesZero: Bool) {
        self.includesZero = includesZero
        //TODO: Create an array which contains the numbers in the Fibonacci sequence, but don't add any numbers to the array which exceed the maxNumber. For example, if the maxNumber is 10 then the array should contain [0,1,1,2,3,5,8] because the next number is 13 which is higher than the maxNumber. If includesZero is false then you should not include the number 0 in the sequence.
        if self.includesZero == true {
            self.values = [0,1]
        } else {
            self.values = [1,1]
        }
        
        for var i=2; ; i++ {
            var (newFibonacciNum, didOverflow) = UInt64.addWithOverflow(self.values[i-1], self.values[i-2])
            
            if didOverflow == true {
                println("Overflow! the next number is too big to store in a UInt64!")
                break
            }
            
            if newFibonacciNum <= maxNumber {
                self.values.append(newFibonacciNum)
            } else {
                break
            }
            
        }
    }
    
    init(numberOfItemsInSequence: UInt64, includesZero: Bool) {
        self.includesZero = includesZero
        //TODO: Create an array which contains the numbers in the Fibonacci sequence, and the array should contain this many items: numberOfItemsInSequence. For example, if numberOfItemsInSequence is 10 then the array should contain [0,1,1,2,3,5,8,13,21,34] if inlcudesZero is true, or [1,1,2,3,5,8,13,21,34,55] if includesZero is false.
        if self.includesZero == true {
            self.values = [0,1]
        } else {
            self.values = [1,1]
        }
        
        for number in 2..<numberOfItemsInSequence {
            var (newFibonacciNum, didOverflow) = UInt64.addWithOverflow(self.values[number-1], self.values[number-2])
            
            if didOverflow == true {
                println("Overflow! The next number is too big to store in a UInt64!")
                break
            } else {
                self.values.append(newFibonacciNum)
            }
            
        }
        
    }
}
