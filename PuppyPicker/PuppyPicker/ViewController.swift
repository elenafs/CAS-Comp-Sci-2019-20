//
//  ViewController.swift
//  PuppyPicker
//
//  Created by Elena on 10/21/19.
//  Copyright © 2019 Elena Fis. All rights reserved.
//

import UIKit

let puppyTypes = ["Dalmation", "Corgi", "Papillon", "German Shepherd", "Cat"]

let Prices = ["$500", "$2,000", "$5,000,000", "$2,000", "$0 (Take it for free, you freak"]

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return puppyTypes[row]
    }
    
    @IBOutlet weak var label: UILabel!
    
    
    @IBAction func PlaceorderButton(_ sender: Any) {
        let row = pickerView.selectedRow(inComponent: 0)
        label.text = "You chose a"+puppyTypes[row] + "it will cost"+Prices[row]
    }
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var Placeorder: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func pickerView( _ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return puppyTypes.count
    }

    
}

