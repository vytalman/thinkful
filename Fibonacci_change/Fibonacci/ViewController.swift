//
//  ViewController.swift
//  Fibonacci
//
//  Created by Ryan Mesa on 10/14/14.
//  Copyright (c) 2014 Ryan Mesa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var fibo = FibonacciModel()
        var returnedArray: [Int] = []
        
        returnedArray = fibo.calculateFibonacciNumbers(minimum2: 5)
        
        println()
        for number in returnedArray {
            print("\(number), ")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

