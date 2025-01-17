//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Elena on 10/7/19.
//  Copyright © 2019 Elena Fis. All rights reserved.
//

import UIKit
enum modes {
    case not_set
    case addition
    case subtraction
}

class ViewController: UIViewController {
    
@IBOutlet weak var didPressClear: UIButton!
@IBOutlet weak var didPressSubtract: UIButton!
@IBOutlet weak var didPressPlus: UIButton!
@IBOutlet weak var didPressEquals: UIButton!


@IBOutlet weak var label: UILabel!
var labelString:String = "0"
var currentMode:modes = .not_set
var savedNum:Int = 0
var lastButtonWasMode:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
@IBAction func didPressEquals( sender: Any) {
    guard let labelInt:Int = Int(labelString)else {
        return
    }
}

if(currentMode == .not_set || lastButtonWasMode){
    return
    
}

if(currentMode == .addition){
    savedNum += labelInt
}
else if (currentMode == .subtraction){
    savedNum -= labelInt
}
currentMode = .not_set
labelString = "\(savedNum)"
updateText()
lastButtonWasMode = true
}

@IBAction func didPressPlus( sender: Any) {
    changeMode(newMode: .addition)
}
@IBAction func didPressSubtract( sender: Any){
    changeMode(newMode: .subtraction)
}
    
    
    func didPressNumber( sender: UIButton) {
       guard let stringValue: String? = sender.titleLabel?.text
        label.text = "Error"
        return
    }
    if lastButtonWasMode {
    lastButtonWasMode = false
    labelString = "0"
    }
        
        labelString = labelString.appending(stringValue!)
        updateText ()
    }
    
    func updateText() {
        guard let labelInt:Int = Int(labelString)else {
            return
        }
        if(currentMode == .not_set){
            savedNum = labelInt
        }
        label.text = "\(labelInt)"
    }
    
    
    func changeMode(newMode:modes){
        if(savedNum == 0){
            return
        }
        currentMode = newMode
        lastButtonWasMode = true
    }
    
    
    
    
    
    
    
    
    


