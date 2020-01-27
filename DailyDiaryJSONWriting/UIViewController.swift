//
//  UIViewController.swift
//  DailyDiaryJSONWriting
//
//  Created by Elena on 1/24/20.
//  Copyright © 2020 Elena Fis. All rights reserved.
//

import UIKit

let questions = ["free-write", "3 amazing things that happened today?", "what are you looking forward to?", "if you can be anywhere in the universe right now, where would you want to be", "write a poem-a-day"]

class KoolViewController: UITableViewController, UIPickerViewDelegate, UIPickerViewDataSource  {
    @IBOutlet weak var questionPicker: UIPickerView!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return questions.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return questions[row]
    }

    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.questionPicker.delegate = self
        self.questionPicker.dataSource = self
    }

}
