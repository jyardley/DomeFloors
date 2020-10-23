//
//  StrutViewController.swift
//  DomeFloors
//
//  Created by Jeff Yardley on 4/30/18.
//  Copyright © 2018 Jeff Yardley. All rights reserved.
//

import UIKit


extension UILabel {
    func halfTextColorChange (fullText : String , changeText : String ) {
        let strNumber: NSString = fullText as NSString
        let range = (strNumber).range(of: changeText)
        let attribute = NSMutableAttributedString.init(string: fullText)
        attribute.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor.red , range: range)
        self.attributedText = attribute
    }
}



class StrutViewController: UIViewController {
    
    var diameter: Double? = 0.0000
    var toMetric: Bool = false
    var toImperial: Bool = false
    
    

    @IBOutlet weak var lbl2VStrutList: UILabel!
    
    @IBOutlet weak var lbl4VStrutList: UILabel!
    
    @IBOutlet weak var lbl6VStrutList: UILabel!
    
    @IBOutlet weak var lbl8VStrutList: UILabel!
    
    @IBAction func ConvertToImperial(_ sender: Any) {
        boolMetric = false
        boolImperial = true
    }

    @IBAction func ConvertToMetric(_ sender: Any) {
            boolMetric = true
            boolImperial = false
            lbl2VStrutList.frame.size.width = 274
            lbl2VStrutList.text = Metric2VString
        
            lbl4VStrutList.frame.size.width = 274
            lbl4VStrutList.text = Metric4VString
        
            lbl6VStrutList.frame.size.width = 274
            lbl6VStrutList.text = Metric6VString
        
            lbl8VStrutList.frame.size.width = 474
            lbl8VStrutList.font = lbl8VStrutList.font.withSize(17)
            lbl8VStrutList.text = Metric8VString
    }
    
    
    @IBAction func BackButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // CalculateDomeStruts2V has already been called on the main View Controller
        if(boolMetric == true && boolImperial == false){
            //Do not change this number
            lbl2VStrutList.frame.size.width = 274
            lbl2VStrutList.text = Metric2VString
        }else{
            lbl2VStrutList.text = StrutList2V
        }
        
        lbl2VStrutList.halfTextColorChange(fullText: lbl2VStrutList.text!, changeText: longestStrut2VString)
        //print("String for longest 2V Strut: \(longestStrut2VString)")
        
        
        
        
        
        CalculateDomeStruts4V(domeRadius: diameter!/2)
        if(boolMetric == true && boolImperial == false){
            //Do not change this number
            lbl4VStrutList.frame.size.width = 274
            lbl4VStrutList.text = Metric4VString
        }else{
            lbl4VStrutList.text = StrutList4V
        }
        
        lbl4VStrutList.halfTextColorChange(fullText: lbl4VStrutList.text!, changeText: longestStrut4VString)
        //print("String for longest 4V Strut: \(longestStrut4VString)")
        
        
        
        
        
        
        CalculateDomeStruts6V(domeRadius: diameter!/2)
        if(boolMetric == true && boolImperial == false){
            //Do not change this number
            lbl6VStrutList.frame.size.width = 274
            lbl6VStrutList.text = Metric6VString
        }else{
            lbl6VStrutList.text = StrutList6V
        }
        
        lbl6VStrutList.halfTextColorChange(fullText: lbl6VStrutList.text!, changeText: longestStrut6VString)
        print("String for longest 6V Strut: \(longestStrut6VString)")
        
        
        
        
        
        
        
        
        // CalculateDomeStruts8V has already been called on the main View Controller
        if(boolMetric == true && boolImperial == false){
            //Do not change this number
            lbl8VStrutList.frame.size.width = 474
            lbl8VStrutList.font = lbl8VStrutList.font.withSize(17)
            lbl8VStrutList.text = Metric8VString
        }else{
            lbl8VStrutList.frame.size.width = 180
            lbl8VStrutList.font = lbl8VStrutList.font.withSize(17)
            lbl8VStrutList.text = StrutList8V
        }
        
        lbl8VStrutList.halfTextColorChange(fullText: lbl8VStrutList.text!, changeText: longestStrut8VString)
        //print("String for longest 8V Strut: \(longestStrut8VString)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
}
