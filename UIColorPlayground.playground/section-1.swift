// Playground - noun: a place where people can play

import UIKit
import XCPlayground

let vintageGreen = UIColor(hue: 0.2, saturation: 0.8, brightness: 0.7, alpha: 1.0)

let viewsFrame = CGRect(x: 0, y: 0, width: 320, height: 320)
let view = UIView(frame: viewsFrame)

view.backgroundColor = vintageGreen
XCPShowView("This is the title!", view)

let black = UIColor.blackColor()

let smallViewsFrame = CGRect(x: 0, y: 0, width: 160, height: 160)
let smallView = UIView(frame: smallViewsFrame)

smallView.backgroundColor = black
smallView.center = view.center
view.addSubview(smallView)

let label = UILabel(frame: smallView.frame)
label.textAlignment = .Center
label.font = UIFont(name: "Helvetica-Bold", size: 22)
label.textColor = UIColor.whiteColor()
label.text = "Holy Shit!"
view.addSubview(label)
