//
//  ViewController.swift
//  AppRememberer
//
//  Created by Elena on 1/7/20.
//  Copyright © 2020 Elena Fis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var GreetingLabel: UILabel!
    
    @IBOutlet weak var NameEntry: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any addition al setup after loading the view.
        let existingName = try? String(contentsOf: getNamFileURL())
        GreetingLabel.text = "Hello, \(existingName ?? "John Doe")"
    }
    func getNamFileURL () -> URL {
        let documentURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
        return documentURL.appendingPathComponent("UserName.txt")
    }
    
    @IBAction func RememberName(_ sender: Any) {
        let name = NameEntry.text!
        try! name.write(to: getNamFileURL(), atomically: true, encoding: .utf8)
        GreetingLabel.text = "Hello, \(name)"
        
    }
    
    
    
    @IBAction func ForgetName(_ sender: Any) {
        try? FileManager.default.removeItem(at: getNamFileURL())
        GreetingLabel.text = "Hello, Stranger"
    }
    
}

