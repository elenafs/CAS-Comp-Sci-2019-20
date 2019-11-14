//
//  ViewController.swift
//  xrdsDictionary
//
//  Created by Elena on 11/1/19.
//  Copyright © 2019 Elena Fis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var vocabDefinition: UILabel!
   
    var _vocabDefinition: String = "this word is rlly kool"
    var _vocabWord: String = "SICK"
  
    @IBOutlet weak var vocabWord: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        vocabDefinition.text = _vocabDefinition
        vocabWord.text = _vocabWord
    }


}

