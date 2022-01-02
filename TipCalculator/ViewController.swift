//
//  ViewController.swift
//  TipCalculator
//
//  Created by Deepeswar Reddy Komma on 1/2/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipPercentageTxt: UITextField!
  
    @IBOutlet weak var BillAmountTxt: UITextField!
    @IBOutlet weak var calculateTipbtn: UIButton!
    
    @IBOutlet weak var Tipamountlbl: UILabel!
    @IBOutlet weak var BilltotalLbl: UILabel!
    
    @IBAction func CalculateTip(_ sender: Any){
        
        let billAmount:Double = Double(BillAmountTxt.text!)!
        
        let tipAmount:Double = (Double(tipPercentageTxt.text!)! / 100) * billAmount
         Tipamountlbl.text = String(format: "$%.02f", tipAmount)
        
        BilltotalLbl.text = String(format: "$%.02f", billAmount + tipAmount)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

