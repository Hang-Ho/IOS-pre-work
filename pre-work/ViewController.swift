//
//  ViewController.swift
//  pre-work
//
//  Created by Hang Ho on 12/27/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var sizeField: UITextField!
    @IBOutlet weak var perPerson: UILabel!
    var totalBill: Double = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill*tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill+tip
        totalBill = total
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        perPerson.text = totalLabel.text
    }
    @IBAction func addSize(_ sender: Any) {
        let size = Double(sizeField.text!) ?? 1
        let eachPerson = totalBill/size
        print(totalBill)
        print(eachPerson)
        perPerson.text = String(format: "$%.2f", eachPerson)
    }
    @IBAction func changeAmount(_ sender: Any) {
        let size = Double(sizeField.text!) ?? 1
        perPerson.text = String(format: "$%.2f", totalBill/size)
    }
}

