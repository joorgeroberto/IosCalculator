//
//  ViewController.swift
//  Calculadora
//
//  Created by Jorge on 31/08/20.
//  Copyright © 2020 Jorge. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var number1: Float = 0
    var number2: Float = 0
    var operation: String = ""
    var total: Float = 0
    
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var btnEqual: UIButton!
    @IBOutlet weak var btnPlus: UIButton!
    @IBOutlet weak var btnMinus: UIButton!
    @IBOutlet weak var btnMult: UIButton!
    @IBOutlet weak var btnDiv: UIButton!
    
    @IBOutlet weak var btnAC: UIButton!

    @IBOutlet weak var btnComma: UIButton!
    @IBOutlet weak var btnZero: UIButton!
    @IBOutlet weak var btnOne: UIButton!
    @IBOutlet weak var btnTwo: UIButton!
    @IBOutlet weak var btnThree: UIButton!
    @IBOutlet weak var btnFour: UIButton!
    @IBOutlet weak var btnFive: UIButton!
    @IBOutlet weak var btnSix: UIButton!
    @IBOutlet weak var btnSeven: UIButton!
    @IBOutlet weak var btnEight: UIButton!
    @IBOutlet weak var btnNine: UIButton!
    
    @IBOutlet weak var btnPercent: UIButton!
    @IBOutlet weak var btnPlusMinus: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label.text = ""
        btnEqual.layer.cornerRadius = 15
        btnPlus.layer.cornerRadius = 15
        btnMinus.layer.cornerRadius = 15
        btnMult.layer.cornerRadius = 15
        btnDiv.layer.cornerRadius = 15
        btnAC.layer.cornerRadius = 15
        btnComma.layer.cornerRadius = 15
        btnPercent.layer.cornerRadius = 15
        btnPlusMinus.layer.cornerRadius = 15
        
        btnZero.layer.cornerRadius = 15
        btnOne.layer.cornerRadius = 15
        btnTwo.layer.cornerRadius = 15
        btnThree.layer.cornerRadius = 15
        btnFour.layer.cornerRadius = 15
        btnFive.layer.cornerRadius = 15
        btnSix.layer.cornerRadius = 15
        btnSeven.layer.cornerRadius = 15
        btnEight.layer.cornerRadius = 15
        btnNine.layer.cornerRadius = 15
    }
    
    @IBAction func equal(_ sender: Any) {
        number2 = Float(label.text!) as! Float
        if (operation == "+") {
            label.text = "\(number1 + number2)"
        }
        else if (operation == "-") {
            label.text = "\(number1 - number2)"
        }
        else if (operation == "x") {
            label.text = "\(number1 * number2)"
        }
        else if (operation == "/") {
            if(number2 != 0) {
                label.text = "\(number1 / number2)"
                
            }
            else {
                label.text = "error"
            }
        }
    }
    @IBAction func AC(_ sender: Any) {
        label.text = ""
        number1 = 0
        number2 = 0
    }
    @IBAction func div(_ sender: Any) {
        let value = label.text
        number1 = Float(value!) as! Float
        operation = "/"
        label.text = ""
    }
    @IBAction func mult(_ sender: Any) {
        let value = label.text
        number1 = Float(value!) as! Float
        operation = "x"
        label.text = ""
    }
    @IBAction func plus(_ sender: Any) {
        let value = label.text
        number1 = Float(value!) as! Float
        operation = "+"
        label.text = ""
    }
    @IBAction func minus(_ sender: Any) {
        let value = label.text
        number1 = Float(value!) as! Float
        operation = "-"
        label.text = ""
    }
    
    @IBAction func seven(_ sender: Any) {
        let value = label.text
        label.text = "\(value!)7"
    }
    @IBAction func eight(_ sender: Any) {
        let value = label.text
        label.text = "\(value!)8"
    }
    @IBAction func nine(_ sender: Any) {
        let value = label.text
        label.text = "\(value!)9"
    }
    @IBAction func four(_ sender: Any) {
        let value = label.text
        label.text = "\(value!)4"
    }
    @IBAction func five(_ sender: Any) {
        let value = label.text
        label.text = "\(value!)5"
    }
    @IBAction func six(_ sender: Any) {
        let value = label.text
        label.text = "\(value!)6"
    }
    @IBAction func one(_ sender: Any) {
        let value = label.text
        label.text = "\(value!)1"
    }
    @IBAction func two(_ sender: Any) {
        let value = label.text
        label.text = "\(value!)2"
    }
    @IBAction func three(_ sender: Any) {
        let value = label.text
        label.text = "\(value!)3"
    }
    @IBAction func zero(_ sender: Any) {
        let value = label.text
        label.text = "\(value!)0"
    }
}

