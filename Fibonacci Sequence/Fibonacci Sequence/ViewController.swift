//
//  ViewController.swift
//  Fibonacci Sequence
//
//  Created by Ryan Mesa on 11/10/14.
//  Copyright (c) 2014 Ryan Mesa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var includesZeroSwitch: UISwitch!
    @IBOutlet weak var includesZeroLabel: UILabel!
    @IBOutlet weak var numberOfItemsSlider: UISlider!
    @IBOutlet weak var numberOfItemsLabel: UILabel!
    
    var fibonacciSequence = FibonacciSequence(numberOfItemsInSequence: 2, includesZero: true)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        updateFibonacciSequence()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func updateFibonacciSequence() {
        
        if !includesZeroSwitch.on {
            numberOfItemsSlider.maximumValue = 93
        } else {
            numberOfItemsSlider.maximumValue = 94
        }
        
        fibonacciSequence = FibonacciSequence(numberOfItemsInSequence: UInt64(numberOfItemsSlider.value), includesZero: includesZeroSwitch.on)
        
        textView.text = fibonacciSequence.values.description
        
        includesZeroLabel.text = includesZeroSwitch.on ? "Yes" : "No"
        
        numberOfItemsLabel.text = String(Int(numberOfItemsSlider.value))
        
    }

}

