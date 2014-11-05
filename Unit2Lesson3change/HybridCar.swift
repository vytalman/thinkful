//
//  HybridCar.swift
//  Unit2Lesson3
//
//  Created by Ryan Mesa on 9/25/14.
//  Copyright (c) 2014 Ryan Mesa. All rights reserved.
//

import Foundation

class HybridCar: Car {
    
    var electricHorsepower: Float = 0.0
    
    override var name: String {
        get {
            super.name = "Hybrid"
            return super.name + "Tech"
        }
        set {
            //Nothing here for now.
        }
    }
    
   override init(nameOfCar: String, colorOfCar: String, horsepowerOfCar: Int, automaticOptionOfCar: Bool) {
    
        self.electricHorsepower = 0.9 * Float(horsepowerOfCar)
        super.init(nameOfCar: nameOfCar, colorOfCar: colorOfCar, horsepowerOfCar: horsepowerOfCar, automaticOptionOfCar: automaticOptionOfCar)
        self.name = nameOfCar
        println("My \(name) is \(color) and has \(electricHorsepower) Electric horsepower (bhp) and is \(automaticOption)")
    }
}
