//
//  ViewController.swift
//  PizzaPicker
//
//  Created by Elena on 10/16/19.
//  Copyright © 2019 Elena Fis. All rights reserved.
//

import UIKit

 let pizzaFlavors = ["Hawaiian", "Meat Lovers", "Greek", "Cheese", "Vegetarian", "Pepperoni"]

class ViewController: 2 {

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView( _ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return pizzaFlavors [row]
    
    }
    
    //add second picker view function
  
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    @IBAction func PlaceorderButton(_ sender: Any) {
        let row = pickerView.selectedRow(inComponent: 0)
        label.text = "You ordered a: "+pizzaFlavors[row]
    }
    
    @IBOutlet weak var Placeorder: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return pizzaFlavors.count
    
    }

    

}


