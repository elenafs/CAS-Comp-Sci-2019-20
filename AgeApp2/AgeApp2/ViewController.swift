//
//  ViewController.swift
//  AgeApp2
//
//  Created by Elena on 9/19/19.
//  Copyright © 2019 Elena Fis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Results: UILabel!
    @IBOutlet weak var UserAge: UILabel!
    @IBOutlet weak var Button: UIButton!
    @IBOutlet weak var AgeLabel: UITextField!
    @IBOutlet weak var Switch1: UISwitch!
    
    var age = 0
    var year = 2019
    var newAge = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func PlusAge(_ sender: UIButton) {
    age += 1
    UserAge.text = "\(age)"
    
    }
    
    @IBAction func MinusAge(_ sender: Any) {
        age -= 1
        UserAge.text = "\(age)"
    }
    @IBAction func Calculation(_ sender: Any) {
      let yearBorn = year - age + newAge
        Results.text = "You were born in \(yearBorn)"
    }
    @IBAction func Switch(_ sender: UISwitch) {
        if Switch1.isOn{
         newAge = 0
            
        } else {
            newAge = -1
        }
    }
}

