//
//  ViewController.swift
//  Calculator_iOS_6
//
//  Created by Alexey Makarov on 03.02.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var firstValue: UITextField!
    
    @IBOutlet weak var secondValue: UITextField!
    
    @IBOutlet weak var symbol: UITextField!
    
    @IBAction func resultButton(_ sender: Any) {
        
        let symbolFunc = symbol.text
        let first: Int? = Int(firstValue.text!)
        let second: Int? = Int(secondValue.text!)
        
        if first == nil || second == nil {
            resultLabel.text! = "Uncorrect value"
        } else {
        
        let add = first! + second!
        let subs = first! - second!
        let mult = first! * second!
        let div = first! / second!
        
        switch symbolFunc {
        case "+": resultLabel.text! = String(add)
        case "-": resultLabel.text! = String(subs)
        case "*": resultLabel.text! = String(mult)
        case "/": resultLabel.text! = String(div)
        default:  resultLabel.text! = "Uncorrect value"
        }
    }
}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

