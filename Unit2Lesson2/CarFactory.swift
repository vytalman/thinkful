//
//  CarFactory.swift
//  Unit2Lesson2
//
//  Created by Ryan Mesa on 9/22/14.
//  Copyright (c) 2014 Ryan Mesa. All rights reserved.
//

import Foundation

class CarFactory {
    var name = ""
    var color = ""
    var horsepower = 0
    var automaticOption = ""
    
    func setupCarDetailsWithName(nameOfCar: String, colorOfCar: String, horsepowerOfCar: Int, automaticOptionOfCar: Bool) {
        self.name = nameOfCar
        self.color = colorOfCar
        self.horsepower = horsepowerOfCar
        self.automaticOption = (automaticOptionOfCar ? "Automatic" : "Manual")
    }
    
    func description() {
        println("My \(name) is \(color) and has \(horsepower) horsepowers and is \(automaticOption)")
    }
}
