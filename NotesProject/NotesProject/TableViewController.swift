//
//  TableViewController.swift
//  NotesProject
//
//  Created by Elena on 11/15/19.
//  Copyright © 2019 Elena Fis. All rights reserved.
//

import UIKit

class NotesTableViewController: UITableViewController {
    
    var notes:[Note] = [Note]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let note1 = Note()
        note1.note = "Hello! This is a note :)"
        notes.append(note1)
        
        let note2 = Note()
        note2.note = "How are you doing"
        notes.append(note2)
        
        let note3 = Note()
        note3.note = "3 times a charm"
        notes.append(note3)
        
        
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
        return notes.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let note = notes[indexPath.row]
        //        let title = notes[indexPath.row]
        //        cell.textLabel!.text = title.note
        
        cell.textLabel?.text = "\(note.date) - \(note.note)"
        
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
    
    
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    
    
    override func viewWillAppear( _ animated: Bool) {
        self.tableView.reloadData()
    }
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let dest = segue.destination as! ViewController
        if let index = self.tableView.indexPathForSelectedRow {
            let note = notes[index.row]
            dest.note = note
            
            //        let vc = segue.destination as!
            //        ViewController
            //
            //        let notes = self.notes[indexPath!.row]
            
        } else {
            let note = Note()
            notes.append(note)
            dest.note = note
        }
    }
    
}
