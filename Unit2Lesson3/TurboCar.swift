//
//  TurboCar.swift
//  Unit2Lesson3
//
//  Created by Ryan Mesa on 9/25/14.
//  Copyright (c) 2014 Ryan Mesa. All rights reserved.
//

import Foundation

class TurboCar: Car {
    
    var turboRating = "" //Can be A to F
    var stabilizingSpoiler = ""
    
    func turboCarSpecs(aTurboRating: String, aSpoiler: Bool) -> String {
        self.turboRating = aTurboRating
        self.stabilizingSpoiler = (aSpoiler ? "a" : "no")
        
        return ("In addition, this turbo car has a Turbe rating of \(self.turboRating) and \(self.stabilizingSpoiler) spoiler")
    }
}