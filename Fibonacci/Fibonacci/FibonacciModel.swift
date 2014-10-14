//
//  FibonacciModel.swift
//  Fibonacci
//
//  Created by Ryan Mesa on 10/14/14.
//  Copyright (c) 2014 Ryan Mesa. All rights reserved.
//

import Foundation

class FibonacciModel {
    
    // Declaring a stored property with initial values
    var sequence: [Int] = [1,1]
    func calculateFibonacciNumbers(minimum2 endOfSequence: Int) -> Array<Int> {
        for number in 2..<endOfSequence {
            var newFibonacciNumber = sequence[number-1] + sequence[number-2]
            sequence.append(newFibonacciNumber)
        }
        
        return sequence
    }
}
