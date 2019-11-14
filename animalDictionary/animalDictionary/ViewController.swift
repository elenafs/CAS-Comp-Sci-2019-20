//
//  ViewController.swift
//  animalDictionary
//
//  Created by Elena on 11/8/19.
//  Copyright © 2019 Elena Fis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var boat:Boat?

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var detailsLabel1: UILabel!
    
    @IBOutlet weak var detailsLabel2: UILabel!
    
    
    @IBOutlet weak var detailsLabel3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = boat?.name
        detailsLabel1.text = boat?.color
        detailsLabel2.text = boat?.size
        detailsLabel3.text = "\(boat!.dolphinPower)"
        
        
    }


}

