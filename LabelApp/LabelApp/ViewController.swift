//
//  ViewController.swift
//  LabelApp
//
//  Created by Elena on 9/19/19.
//  Copyright © 2019 Elena Fis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ResetButton: UIButton!
    @IBOutlet var TheButton: UIView!
    @IBOutlet weak var Label: UILabel!
    var ButtonStuff = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Label.text = "The Button Was Pressed 0 Times"
    }

    @IBAction func ButtonPressed(_ sender: UIButton) {
        ButtonStuff += 1
        Label.text = "The Button Was Presses \(ButtonStuff) Times"
    }
    
    @IBAction func ResetBuyttonPress(_ sender: Any) {
        ButtonStuff = 0
        Label.text = "The Button Was Presses \(ButtonStuff) Times"
    }
}

