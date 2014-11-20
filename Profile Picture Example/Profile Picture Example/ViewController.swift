//
//  ViewController.swift
//  Profile Picture Example
//
//  Created by Ryan Mesa on 11/19/14.
//  Copyright (c) 2014 Ryan Mesa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.imageView.alpha = 0.0 // Hide imageView until we get the data.
        
        let myProfilePictureURL = NSURL(string: "http://graph.facebook.com/ryan.mesa.1232/picture?type=square&width=640&height=640")
        
        let activityIndicatorView = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.Gray)
        activityIndicatorView.center = self.view.center
        self.view.addSubview(activityIndicatorView)
        activityIndicatorView.startAnimating()
        
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)) {
            // Do some sync stuff
            let imageData = NSData(contentsOfURL: myProfilePictureURL!)
            
            NSOperationQueue.mainQueue().addOperationWithBlock {
                // Do some main thread stuff
                self.imageView.image = UIImage(data: imageData!)
                activityIndicatorView.stopAnimating()
                
                UIView.animateWithDuration(1.0, animations: {
                    self.imageView.alpha = 1.0
                    }, completion: {
                        (value: Bool) in
                        println("Animation complete!")
                })
            }
        }
        let imageData = NSData(contentsOfURL: myProfilePictureURL!)
        self.imageView.image = UIImage(data: imageData!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

