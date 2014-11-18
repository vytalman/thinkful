//
//  ViewController.swift
//  Web Service Example
//
//  Created by Ryan Mesa on 11/14/14.
//  Copyright (c) 2014 Ryan Mesa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myNameLabel: LTMorphingLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let manager = AFHTTPRequestOperationManager()
        
        manager.GET( "http://graph.facebook.com/ryan.mesa.1232",
            parameters: nil,
            success: { (operation: AFHTTPRequestOperation!,responseObject: AnyObject!) in
                println("JSON: " + responseObject.description)
                
                if let myName = responseObject.valueForKey("name") as? String {
                    self.myNameLabel.text = myName;
                }
                self.myNameLabel.morphingEffect = .Evaporate
            },
            failure: { (operation: AFHTTPRequestOperation!,error: NSError!) in
                println("Error: " + error.localizedDescription)
        })
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

