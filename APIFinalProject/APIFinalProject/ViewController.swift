//
//  ViewController.swift
//  APIFinalProject
//
//  Created by Elena on 12/18/19.
//  Copyright © 2019 Elena Fis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var SpringLabel: UILabel!
    @IBOutlet weak var SummerLabel: UILabel!
    @IBOutlet weak var FallLabel: UILabel!
    @IBOutlet weak var WinterLabel: UILabel!
    
    @IBOutlet weak var Label: UILabel!
    @IBAction func SpringButton(_ sender: Any) {
        let url: URL = URL(string: "https://dinoipsum.herokuapp.com/api/?format=json&paragraphs=1&words=1")!
        let responseData: Data? = try? Data(contentsOf: url)
        if let responseData = responseData {
            let json:Any? = try?
                JSONSerialization.jsonObject(with: responseData, options: [])
            if let json = json {
                let list: [[String]]? = json as? [[String]]
                if let list = list {
                    let dino:[String]? = list.first as? [String]
                    if let dino = dino {
                        Label.text = dino.first
                    }
                }
            }
        }
    }
    
    @IBAction func SummerPress(_ sender: Any) {
    let url: URL = URL(string: "https://dinoipsum.herokuapp.com/api/?format=json&paragraphs=1&words=1")!
        let responseData: Data? = try? Data(contentsOf: url)
        if let responseData = responseData {
            let json:Any? = try?
                JSONSerialization.jsonObject(with: responseData, options: [])
            if let json = json {
                let list: [[String]]? = json as? [[String]]
                if let list = list {
                    let dino:[String]? = list.first as? [String]
                    if let dino = dino {
                        Label.text = dino.first
                    }
                }
            }
        }
    }
    
    @IBAction func PressFall(_ sender: Any) {
    
    let url: URL = URL(string: "https://dinoipsum.herokuapp.com/api/?format=json&paragraphs=1&words=1")!
        let responseData: Data? = try? Data(contentsOf: url)
        if let responseData = responseData {
            let json:Any? = try?
                JSONSerialization.jsonObject(with: responseData, options: [])
            if let json = json {
                let list: [[String]]? = json as? [[String]]
                if let list = list {
                    let dino:[String]? = list.first as? [String]
                    if let dino = dino {
                        Label.text = dino.first
                    }
                }
            }
        }
    }
    
    
    @IBAction func PressWinter(_ sender: Any) {
    let url: URL = URL(string: "https://dinoipsum.herokuapp.com/api/?format=json&paragraphs=1&words=1")!
        let responseData: Data? = try? Data(contentsOf: url)
        if let responseData = responseData {
            let json:Any? = try?
                JSONSerialization.jsonObject(with: responseData, options: [])
            if let json = json {
                let list: [[String]]? = json as? [[String]]
                if let list = list {
                    let dino:[String]? = list.first as? [String]
                    if let dino = dino {
                        Label.text = dino.first
                    }
                }
            }
        }
    }
    
    @IBAction func ClearPress(_ sender: Any) {
        Label.text = ""
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}
