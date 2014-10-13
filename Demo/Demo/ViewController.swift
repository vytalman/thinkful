//
//  ViewController.swift
//  Demo
//
//  Created by Ryan Mesa on 10/2/14.
//  Copyright (c) 2014 Ryan Mesa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var result = 0
        
        for i in 0...100 {
            result+=i
        }
        
        println("The result is \(result)")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

