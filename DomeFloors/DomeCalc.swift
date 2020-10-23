//
//  DomeCalc.swift
//  DomeFloors
//
//  Created by Jeff Yardley on 4/28/18.
//  Copyright © 2018 Jeff Yardley. All rights reserved.
//

import Foundation


//Constants
let PI: Double = 3.141592653589793


//Variables
var currentArea: Double = 2000.000
var currentCeilHeight: Int = 9



//Function that calculates and adds the areas of successively larger domes
//using the desired ceiling height as the radius of the dome.
func CalculateDomeWithFloors(areaDesired: Double, ceilingHeight: Double) -> (domeDiameter: Double, numberOfFloors: Int, actualArea: Double) {
    //Calculate area of smallest dome possible with the desired ceiling height as the height of the dome
    var calcDomeRadius = ceilingHeight
    // A=PIr^2 where r is the height of the dome
    var calcArea = PI * pow(ceilingHeight, 2)
    var numberOfFloors: Int = 1
    
    //If the area of the smallest possible dome is less than the desired area, double, triple, quadruple the height and add the successive dome areas formed to the total calculated area until the calculated area is no longer less than the minimum area desired.  ceiling height is a multiplier for the floors
    while( calcArea < areaDesired ){
        calcArea = calcArea + ( PI * pow(ceilingHeight * Double(numberOfFloors), 2) )
        numberOfFloors = numberOfFloors + 1
        calcDomeRadius = calcDomeRadius + ceilingHeight
    }
    
    let actualArea:Double = calcArea
    let domeDiameter = calcDomeRadius * 2.00000
    
    
    return (domeDiameter, numberOfFloors, actualArea)
}



