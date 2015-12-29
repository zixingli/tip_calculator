//
//  ViewController.swift
//  tips
//
//  Created by Zixing Li on 12/29/15.
//  Copyright © 2015 Zixing Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        
        let billAmount = NSString(string: billField.text!).doubleValue
        let tipPercentages = [0.15, 0.18, 0.2]
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        let tipAmount = billAmount * tipPercentage
        let totalAmount = billAmount + tipAmount
        tipLabel.text = "$\(tipAmount)"
        totalLabel.text = "$\(totalAmount)"
        
        tipLabel.text = String(format: "$%.2f", tipAmount)
        totalLabel.text = String(format: "$%.2f", totalAmount)

    }

    @IBAction func onTap(sender: AnyObject) {
    view.endEditing(true)
    }
}

