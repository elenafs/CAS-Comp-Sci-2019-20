//
//  TableViewController.swift
//  animalDictionary
//
//  Created by Elena on 11/8/19.
//  Copyright © 2019 Elena Fis. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
 
    let boats:[Boat] = [
        Boat(n: "Kayak", dp: 0, c:"white", s: "large"),
        Boat(n: "Monohaul", dp: 7, c: "blue", s: "medium"),
        Boat(n: "Yacht", dp: 320, c: "black", s: "very large"),
        Boat(n: "Disney Cruise", dp: -800, c: "clear", s: "too big"),
        Boat(n: "PHOENIX2", dp: 10000000000000000, c: "Ultraviolet", s: "largest"),
        Boat(n: "SS Submarine", dp: 200000000, c: "invisible", s: "nuclear"),
        Boat(n: "ss peepoHappy", dp: 50, c: "minty green", s: "teeny"),
        Boat(n: "Titanic", dp: -50, c: "rusty", s: "in half"),
        Boat(n: "Alligator Boat", dp: 20, c: "Alligator color", s: "Alligator size")
        
    ]
    
    
    
    
//    let vocab:[String:String] = [
//        "Goose":"Big, mean birdy",
//        "Deer":"Think small horse with antlers",
//        "Dog":"'nuf said",
//        "Cat":"The devil",
//        "Chicken":"tasty bird",
//        "Butterfly":"that's a bug, dummy",
//        "Narwhal":"unicorn whale",
//        "Great White shark":"toothy ocean predator",
//        "Lion":"Queen of the jungle (savhanna)",
//        "peacock":"bird with makeup",
//        "Fox":"smart dog-cat"
//    ]
    
   
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return boats.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "boat", for: indexPath)
        
        cell.textLabel?.text = boats[indexPath.row].name
        
        return cell
    }
    
    
    

    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           
            let vc = segue.destination as! ViewController

            let indexPath = self.tableView.indexPathForSelectedRow
          
            let b = self.boats[indexPath!.row]
            vc.boat = b
    }
    
    
    
}
