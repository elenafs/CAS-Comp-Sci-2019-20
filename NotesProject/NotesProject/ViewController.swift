//
//  ViewController.swift
//  NotesProject
//
//  Created by Elena on 11/14/19.
//  Copyright © 2019 Elena Fis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var note:Note?
    
    @IBOutlet weak var textView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.text = note?.note
        
    }
    override func viewWillDisappear(_ animated: Bool) {
        note?.note = textView.text
    }
    
}

