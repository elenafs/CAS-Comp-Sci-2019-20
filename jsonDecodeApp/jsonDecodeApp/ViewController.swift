//
//  ViewController.swift
//  jsonDecodeApp
//
//  Created by Riley John Gibbs on 12/3/19.
//  Copyright © 2019 Riley John Gibbs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var jsonFileData: Data?
    var jsonFileString: String?
    
    // TODO: Come up with a better UI than just a single boring label.
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var excitingLabel2: UILabel!
    @IBOutlet weak var excitingLabel3: UILabel!
    @IBOutlet weak var excitingLabel4: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let fileUrl = Bundle.main.url(forResource: "data", withExtension: "json") {
            jsonFileData = try? Data(contentsOf: fileUrl)
            jsonFileString = try? String(contentsOf: fileUrl)
            
            let dictionary = jsonFileString as! [String: Any]
            
            let name: String = dictionary["name"] as! String
            let age: Int = dictionary["age"] as! Int
            let hobbies: [String] = dictionary["hobbies"] as! [String]
            let pet: String = dictionary["pet"] as! String
            
            
            // This just puts the file contents (unparsed) into the label.
            if let string = jsonFileString {
                myLabel.text = string
            }
            
            if let data = jsonFileData {
                
                excitingLabel2.text = "My name is \(name)."
                
                excitingLabel3.text = "I am definitely \(age) years old (;."
                excitingLabel4.text = "I have a pet \(pet)."
                
                // TODO: Parse the JSON data and display it in the app.
            }
        }
    }
    
}

