//
//  main.swift
//  Unit2Lesson3
//
//  Created by Ryan Mesa on 9/24/14.
//  Copyright (c) 2014 Ryan Mesa. All rights reserved.
//

import Foundation

//This is the first category of cars
var myRegularCar = Car(nameOfCar: "Regular Car", colorOfCar: "Red", horsepowerOfCar: 200, automaticOptionOfCar: true)

myRegularCar.description()

//This is the second category of cars: a Turbo Car
var myTurboCar = TurboCar(nameOfCar: "Turbo Car", colorOfCar: "Blue", horsepowerOfCar: 300, automaticOptionOfCar: true)

println()
myTurboCar.description()

println(myTurboCar.turboCarSpecs("B", aSpoiler: true))
println()

//This is the third category of cars: a Hybrid Car
var myHybridCar = HybridCar(nameOfCar: "Hybrid Car", colorOfCar: "Yellow", horsepowerOfCar: 100, automaticOptionOfCar: true)

//This is the fourth category of cars: a Pickup Truck
var myPickupTruck = PickupTruck(nameOfCar: "Pickup Truck", colorOfCar: "Green", horsepowerOfCar: 250, automaticOptionOfCar: false)

println()
myPickupTruck.description()

//Scenario 1 - Use the setter to work back to calculate the length
myPickupTruck.totalCargoArea = 3000.0

println()
println("The Truck's cargo bed length is: \(myPickupTruck.cargoBedLength) and the cargo bed width is \(myPickupTruck.cargoBedWidth) and the total cargo area is \(myPickupTruck.totalCargoArea)")

//Scenario 2 - Set the length and width of cargo area use only the getter to calculate the area
myPickupTruck.cargoBedWidth = 50
myPickupTruck.cargoBedLength = 60

println()
println("The Truck's cargo bed length is: \(myPickupTruck.cargoBedLength) and the cargo bed width is: \(myPickupTruck.cargoBedWidth) and the total cargo area is \(myPickupTruck.totalCargoArea)")

println("The total cargo area for the pickupTruck is \(myPickupTruck.totalCargoArea)")
