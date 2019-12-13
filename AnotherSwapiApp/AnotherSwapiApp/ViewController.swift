//
//  ViewController.swift
//  AnotherSwapiApp
//
//  Created by Elena on 12/11/19.
//  Copyright © 2019 Elena Fis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var massLabel: UILabel!
    
    @IBAction func pressOne(_ sender: Any) {
        let url: URL = URL(string: "https://swapi.co/api/people/1/")!
        let responseData: Data? = try? Data(contentsOf: url)
        if let responseData = responseData {
            let json: Any? = try? JSONSerialization.jsonObject(with: responseData, options: [])
            if let json = json {
                let dictionary: [String: Any]? = json as? [String: Any]
                if let dictionary = dictionary {
                    let name: String? = dictionary["name"] as? String
//                    let mass: Int = (dictionary["mass"] as? Int)!
                    if let name = name {
                        nameLabel.text = name
//                        massLabel.text = "\(mass)"
                    }
                }
            }
        }
    }
    
    
    @IBAction func pressTwo(_ sender: Any) {
        let url2: URL = URL(string: "https://swapi.co/api/people/2/")!
        let responseData: Data? = try? Data(contentsOf: url2)
        if let responseData = responseData {
            let json: Any? = try? JSONSerialization.jsonObject(with: responseData, options: [])
            if let json = json {
                let dictionary: [String: Any]? = json as? [String: Any]
                if let dictionary = dictionary {
                    let name: String? = dictionary["name"] as? String
                    if let name = name {
                        nameLabel.text = name
                    }
                }
            }
        }
    }
    
    @IBAction func pressThree(_ sender: Any) {
   let url3: URL = URL(string: "https://swapi.co/api/people/3/")!
   let responseData: Data? = try? Data(contentsOf: url3)
   if let responseData = responseData {
       let json: Any? = try? JSONSerialization.jsonObject(with: responseData, options: [])
       if let json = json {
           let dictionary: [String: Any]? = json as? [String: Any]
           if let dictionary = dictionary {
               let name: String? = dictionary["name"] as? String
               if let name = name {
                   nameLabel.text = name
               }
           }
       }
   }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

