//
//  StrutCalc.swift
//  DomeFloors
//
//  Created by Jeff Yardley on 4/27/18.
//  Copyright © 2018 Jeff Yardley. All rights reserved.
//

import Foundation

var longestStrut: Double = 0.00
var longestStrut2VString: String = ""
var longestStrut4VString: String = ""
var longestStrut6VString: String = ""
var longestStrut8VString: String = ""



var StrutList2V: String = ""
var StrutList4V: String = ""
var StrutList6V: String = ""
var StrutList8V: String = ""


var boolMetric: Bool = false
var boolImperial: Bool = false


var Metric2VString: String = ""
var Imperial2VString: String = ""

var Metric4VString: String = ""
var Imperial4VString: String = ""

var Metric6VString: String = ""
var Imperial6VString: String = ""

var Metric8VString: String = ""
var Imperial8VString: String = ""






func CalculateMetric(rawMeasure: Double) -> String {
    var MetricString: String = ""
    let rawMillimeters = rawMeasure * 1000
    let meters: Int = Int(Int(rawMillimeters) / 1000)
    let centimeters: Int = Int((Int(rawMillimeters) % 1000) / 10)
    let millimeters: Int = Int(Int(rawMillimeters) % 10)
    
    if(meters > 0){
        MetricString = "\(meters)M \(centimeters)cm \(millimeters)mm  "
    }else{
        MetricString = "\(centimeters)cm \(millimeters)mm  "
    }
    
    
    return MetricString
}




//Strut factors gotten from: desertdomes.com
//Calculates length of 2V geodesic dome struts from the input of Dome diameter
func CalculateDomeStruts2V(domeRadius: Double) {
    
    StrutList2V = ""
    Metric2VString = ""
    Imperial2VString = ""
    
    
    let lengthA: Double = 0.61803 * domeRadius
    let lengthB: Double = 0.54653 * domeRadius
    
    print("Needed for 2V Dome:")
    print("35 A Struts of length: \(lengthA)")
    print("30 B Struts of length: \(lengthB)")
    print("\n\n")
    
    
    let strutLength2VArray: [Double] = [lengthA, lengthB]
    let strutType2VArray: [String] = ["Length A","Length B"]
    let strutsArray = zip(strutType2VArray, strutLength2VArray)
    
    
    for pair in strutsArray{
        StrutList2V += "\(pair.0): \(String(format: "%.5f", pair.1)) "
        //StrutList2V += "\n"
        //print("--\(pair.0): \(pair.1)--")
        let metricMeasure = CalculateMetric(rawMeasure: pair.1)
        Metric2VString += "\(pair.0): \(String(metricMeasure) )"
        print("\(Metric2VString)")
    }
    
    //Debug...
    //print("Strut List 2V: \(StrutList2V)")
    
    
    //Extra part to display longest strut on the main ViewController
    //Sort Array...
    var strutLength2VSortedArray = strutLength2VArray.sorted(by: >)
    //Get the longest strut...
    longestStrut = strutLength2VSortedArray[0]
    longestStrut2VString = String(format: "%.5f", longestStrut)
   
}



//Calculates length of 4V geodesic dome struts from the input of Dome diameter
func CalculateDomeStruts4V(domeRadius: Double) {
    
    StrutList4V = ""
    Metric4VString = ""
    Imperial4VString = ""
    
    let lengthA: Double = 0.25318 * domeRadius
    let lengthB: Double = 0.29524 * domeRadius
    let lengthC: Double = 0.29453 * domeRadius
    let lengthD: Double = 0.31287 * domeRadius
    let lengthE: Double = 0.32492 * domeRadius
    let lengthF: Double = 0.29859 * domeRadius
    /*
    print("Needed for 4V Dome:")
    print("35 A Struts of length: \(lengthA)")
    print("30 B Struts of length: \(lengthB)")
    print("60 C Struts of length: \(lengthC)")
    print("70 D Struts of length: \(lengthD)")
    print("30 E Struts of length: \(lengthE)")
    print("30 F Struts of length: \(lengthF)")
    print ("\n\n")
    */
    
    let strutLengthArray: [Double] = [lengthA, lengthB, lengthC, lengthD, lengthE, lengthF]
    let strutTypeArray: [String] = ["Length A","Length B", "Length C", "Length D","Length E", "Length F"]
    let strutsArray = zip(strutTypeArray, strutLengthArray)
    
    
    for pair in strutsArray{
        StrutList4V += "\(pair.0): \(String(format: "%.5f", pair.1)) "
        //StrutList4V += "\n"
        //print("--\(pair.0): \(pair.1)--")
        let metricMeasure = CalculateMetric(rawMeasure: pair.1)
        Metric4VString += "\(pair.0): \(String(metricMeasure) )"
        print("\(Metric4VString)")
    }
    
    //Extra part to sort the array into both Double and string for display on Struts
    //View Controller...
    var strutLengthSortedArray = strutLengthArray.sorted(by: >)
    //Get the longest strut...
    longestStrut = strutLengthSortedArray[0]
    longestStrut4VString = String(format: "%.5f", longestStrut)
    //print("--- longestStrut4String: \(longestStrut4VString)")
    
}




//Calculates length of 6V geodesic dome struts from the input of Dome diameter
func CalculateDomeStruts6V(domeRadius: Double) {
    
    StrutList6V = ""
    Metric6VString = ""
    Imperial6VString = ""
    
    let lengthA: Double = 0.1625672 * domeRadius
    let lengthB: Double = 0.1904769 * domeRadius
    let lengthC: Double = 0.1819083 * domeRadius
    let lengthD: Double = 0.2028197 * domeRadius
    let lengthE: Double = 0.1873834 * domeRadius
    let lengthF: Double = 0.1980126 * domeRadius
    let lengthG: Double = 0.2059077 * domeRadius
    let lengthH: Double = 0.2153537 * domeRadius
    let lengthI: Double = 0.2166282 * domeRadius
    /*
    print("Needed for 6V Dome:")
    print("35 A Struts of length: \(lengthA)")
    print("30 B Struts of length: \(lengthB)")
    print("60 C Struts of length: \(lengthC)")
    print("90 D Struts of length: \(lengthD)")
    print("30 E Struts of length: \(lengthE)")
    print("60 F Struts of length: \(lengthF)")
    print("130 G Struts of length: \(lengthG)")
    print("65 H Struts of length: \(lengthH)")
    print("60 I Struts of length: \(lengthI)")
    print ("\n\n")
    */
    
    let strutLengthArray: [Double] = [lengthA, lengthB, lengthC, lengthD, lengthE, lengthF, lengthG, lengthH, lengthI]
    let strutTypeArray: [String] = ["Length A","Length B", "Length C", "Length D","Length E", "Length F", "Length G", "Length H", "Length I"]
    let strutsArray = zip(strutTypeArray, strutLengthArray)
    
    
    for pair in strutsArray{
        StrutList6V += "\(pair.0): \(String(format: "%.5f", pair.1)) "
        //StrutList6V += "\n"
        //print("--\(pair.0): \(pair.1)--")
        let metricMeasure = CalculateMetric(rawMeasure: pair.1)
        Metric6VString += "\(pair.0): \(String(metricMeasure) )"
        print("\(Metric6VString)")
    }
    
    //Extra part to sort the array into both Double and string for display on Struts
    //View Controller...
    var strutLengthSortedArray = strutLengthArray.sorted(by: >)
    //Get the longest strut...
    longestStrut = strutLengthSortedArray[0]
    longestStrut6VString = String(format: "%.5f", longestStrut)
    
    
}





//Calculates length of 8V geodesic dome struts from the input of Dome diameter
//Values gotten from: www.domerama.com/calculators/
func CalculateDomeStruts8V(domeRadius: Double) {
    
    StrutList8V = ""
    Metric8VString = ""
    Imperial8VString = ""
    
    let lengthA: Double = 0.11946 * domeRadius
    let lengthB: Double = 0.13033 * domeRadius
    let lengthC: Double = 0.13424 * domeRadius
    let lengthD: Double = 0.14018 * domeRadius
    let lengthE: Double = 0.14056 * domeRadius
    let lengthF: Double = 0.14548 * domeRadius
    let lengthG: Double = 0.14628 * domeRadius
    let lengthH: Double = 0.14803 * domeRadius
    let lengthI: Double = 0.14862 * domeRadius
    let lengthJ: Double = 0.15267 * domeRadius
    let lengthK: Double = 0.15296 * domeRadius
    let lengthL: Double = 0.15315 * domeRadius
    let lengthM: Double = 0.15477 * domeRadius
    let lengthN: Double = 0.15636 * domeRadius
    let lengthO: Double = 0.16033 * domeRadius
    let lengthP: Double = 0.16036 * domeRadius
    let lengthQ: Double = 0.16088 * domeRadius
    let lengthR: Double = 0.16300 * domeRadius
    let lengthS: Double = 0.16465 * domeRadius
    
    /*
    print("Needed for 8V Dome:")
    print("30 A Struts of length: \(lengthA)")
    print("60 B Struts of length: \(lengthB)")
    print("30 C Struts of length: \(lengthC)")
    print("30 D Struts of length: \(lengthD)")
    print("60 E Struts of length: \(lengthE)")
    print("60 F Struts of length: \(lengthF)")
    print("30 G Struts of length: \(lengthG)")
    print("60 H Struts of length: \(lengthH)")
    print("60 I Struts of length: \(lengthI)")
    print("60 J Struts of length: \(lengthJ)")
    print("70 K Struts of length: \(lengthK)")
    print("30 L Struts of length: \(lengthL)")
    print("60 M Struts of length: \(lengthM)")
    print("90 N Struts of length: \(lengthN)")
    print("60 O Struts of length: \(lengthO)")
    print("30 P Struts of length: \(lengthP)")
    print("70 Q Struts of length: \(lengthQ)")
    print("60 R Struts of length: \(lengthR)")
    print("30 S Struts of length: \(lengthS)")
    print ("\n\n")
    */
    
    
    

    let strutLengthArray: [Double] = [lengthA, lengthB, lengthC, lengthD, lengthE, lengthF, lengthG, lengthH, lengthI, lengthJ, lengthK, lengthL, lengthM, lengthN, lengthO, lengthP, lengthQ, lengthR, lengthS]
    let strutTypeArray: [String] = ["Length A","Length B", "Length C", "Length D","Length E", "Length F", "Length G", "Length H", "Length I", "Length J", "Length K", "Length L", "Length M", "Length N", "Length O", "Length P", "Length Q", "Length R", "Length S"]
    let strutsArray = zip(strutTypeArray, strutLengthArray)
    
    
    
    for pair in strutsArray{
        StrutList8V += "\(pair.0): \(String(format: "%.5f", pair.1)) "
        //StrutList8V += "\n"
        //print("--\(pair.0): \(pair.1)--")
        let metricMeasure = CalculateMetric(rawMeasure: pair.1)
        Metric8VString += "\(pair.0): \(String(metricMeasure) )"
        print("\(Metric8VString)")
        
        
        //Extra part to display longest strut on the main ViewController
        //Sort Array...
        var strutLengthSortedArray = strutLengthArray.sorted(by: >)
        //Get the longest strut...
        longestStrut = strutLengthSortedArray[0]
        longestStrut8VString = String(format: "%.5f", longestStrut)
        
    
        
        
    }
    
    
    
    
    /*
    //Extra part to display longest strut on the main ViewController
    //Sort Array...
    var strutLengthSortedArray = strutLengthArray.sorted(by: >)
    //Get the longest strut...
    longestStrut = strutLengthSortedArray[0]
    */
}

