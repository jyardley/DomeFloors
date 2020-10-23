//
//  ViewController.swift
//  DomeFloors
//
//  Created by Jeff Yardley on 4/27/18.
//  Copyright © 2018 Jeff Yardley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var areaSlider: UISlider!
    
    
    @IBOutlet weak var ceilHeightSlider: UISlider!
    
    @IBOutlet weak var lblArea: UILabel!
    
    @IBOutlet weak var lblHeight: UILabel!
    
    
    @IBOutlet weak var lblActualArea: UILabel!
    
    @IBOutlet weak var lblNumberFloors: UILabel!
    
    @IBOutlet weak var lblDomeDiameter: UILabel!
    
    @IBOutlet weak var lblDomeHeight: UILabel!
    
    
    @IBOutlet weak var lblLongest2V: UILabel!
    
    
    @IBOutlet weak var lblLongest8V: UILabel!
    
    
    @IBOutlet weak var btnStrutList: UIButton!
  
  
 
    
 
    
    
    
    
    
    
    
    func CallDomeCalculator() {
        //Call function with miminum ceiling height and minimum area requirements
        let(domeDiameter, numberOfFloors, actualArea) = CalculateDomeWithFloors(areaDesired: currentArea, ceilingHeight: Double(currentCeilHeight))
        print("Dome Diameter: \(domeDiameter)\n")
        print("Dome Height: \(domeDiameter/2.0000)")
        print("Number Of Floors: \(numberOfFloors)")
        print("Approx. Actual Area: \(actualArea)\n")
        
        
        lblDomeDiameter.text = "\(domeDiameter)"
        lblDomeHeight.text = "\(domeDiameter/2.0000)"
        lblNumberFloors.text = "\(numberOfFloors)"
        lblActualArea.text = "\(actualArea)"
        
        let outputDomeRadius: Double = domeDiameter/2.0000
        CalculateDomeStruts2V(domeRadius: outputDomeRadius)        
        lblLongest2V.text = "\(longestStrut)"
        
        CalculateDomeStruts8V(domeRadius: outputDomeRadius)
        lblLongest8V.text = "\(longestStrut)"
        
    }//EndCallDomeCalculator...
    
    
  
    
    
    
    
    
    @IBAction func AreaValueChanged(_ sender: UISlider) {
        currentArea = Double(sender.value)
        
        lblArea.text = "\(Int(currentArea))"
        self.CallDomeCalculator()
    }
    
    @IBAction func CeilHeightChanged(_ sender: UISlider) {
        currentCeilHeight = Int(sender.value)
        
        lblHeight.text = "\(currentCeilHeight)"
        CallDomeCalculator()
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        CallDomeCalculator()
    
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let diameter = Double(lblDomeDiameter.text!)!
        if let destinationViewController = segue.destination as? StrutViewController {
            destinationViewController.diameter = diameter
        }
    }
    
    
    
    
    

}

