//
//  Car.swift
//  Unit2Lesson3
//
//  Created by Ryan Mesa on 9/24/14.
//  Copyright (c) 2014 Ryan Mesa. All rights reserved.
//

import Foundation

class Car {
    
    var name = ""
    var color = ""
    var horsepower = 0
    var automaticOption = ""
    
    init(nameOfCar: String, colorOfCar: String, horsepowerOfCar: Int, automaticOptionOfCar: Bool) {
        name = nameOfCar
        color = colorOfCar
        horsepower = horsepowerOfCar
        automaticOption = (automaticOptionOfCar ? "Automatic" : "Manual")
    }
    
    func description() {
        println("My \(name) is \(color) and has \(horsepower) horsepowers and is \(automaticOption)")
    }
}
