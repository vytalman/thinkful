//
//  ViewController.swift
//  Grayscale Slider
//
//  Created by Ryan Mesa on 10/31/14.
//  Copyright (c) 2014 Ryan Mesa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func doSomething() {
        println("It works!")
        
        view.backgroundColor = UIColor.purpleColor()
    }

    @IBAction func sliderDidChangeValue(sender: UISlider) {
        println(sender.value)
        
        view.backgroundColor = UIColor(white: CGFloat(sender.value), alpha: 1)
    }
    
}

