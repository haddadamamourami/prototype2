//
//  ViewController.swift
//  Temperature converter
//
//  Created by Mohamed Ali BELHADJ on 2022-01-23.
//

import UIKit

class ViewController: UIViewController {
    var count = 0
    @IBOutlet weak var tempEntry: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var conversionLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func convertClicked(_ sender: Any) {
        if let result = tempEntry.text {
            if (result == ""){
                return
            }
            else {
                if let num = Double(result){
                    let output = num * (9/5) + 32
                    resultLabel.text = String(output)
                    
                    count += 1
                    conversionLabel.text = String(count) + " Conversions"
                }
            }
        }
    }
}

