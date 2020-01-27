//
//  ViewController.swift
//  DailyDiaryJSONWriting
//
//  Created by Elena on 1/15/20.
//  Copyright © 2020 Elena Fis. All rights reserved.
//

import UIKit




class ViewController : UIViewController {
    
    
    
    
    
    
    
    
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var gradeInput: UITextField!
    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var bdayInput: UITextField!
    @IBOutlet weak var animalInput: UITextField!
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        if let url = getFileURL() {
            
            
            let data = try? Data(contentsOf: url)
            if let data = data {
                let dict = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: String]
                nameInput.text = dict["name"]
                gradeInput.text = dict["grade"]
                bdayInput.text = dict["birthday"]
                animalInput.text = dict["favorite animal"]
            }
        }
    }
    
    func getFileURL() -> URL? {
        let docDirectory = try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
        
        if docDirectory != nil {
            return docDirectory!.appendingPathComponent("savefile.Json")
        }
        return nil
        
    }
    
    func saveButton(_ sender: Any) {
        let data: [String:String] = [
            "name" : nameInput.text ?? "Jane Doe" ,
            "grade" : gradeInput.text ?? "3000th grade" ,
            "birthday" : bdayInput.text ?? "Infinite" ,
            "favorite animal" : animalInput.text ?? "dodo"
        ]
        
        let url = getFileURL ()
        if let jsonData = try?  JSONSerialization.data(withJSONObject: data, options: []) {
            try! jsonData.write(to: url!)
        } else {
            print ("FAILED TO SAVE")
        }
    }
}
