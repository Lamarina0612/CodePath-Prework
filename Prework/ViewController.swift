//
//  ViewController.swift
//  Prework
//
//  Created by Marina on 1/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        // Get the bill amount from the text field input
        let bill = Double(billAmountTextField.text!)
        
        // Get the total tip by multiplying tip * tipPercentage
        let tipPercentage = [0.15, 0.18, 0.2]
        let tip = bill! * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill! + tip
        
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
}

