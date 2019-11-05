//
//  ViewController.swift
//  SchedulePicker
//
//  Created by Elena on 10/23/19.
//  Copyright © 2019 Elena Fis. All rights reserved.
//

import UIKit



class ViewController: UIViewController, UIPickerViewDataSource,
UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    var curDayType = "A"
    var curWeekday = "Monday"
    var curschedule = "Regular"
    
    let dayTypes:[String]=["A", "B", "C"]
    let weekdays:[String]=["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
    let schedule:[String]=["Regular", "Double Period", "Assembly"]
    
    let mySchedule:[String:String] = [
        "A":"Trig. & Differential Calc.",
        "B":"Computer Science",
        "C":"Latin",
        "D":"US History",
        "E":"English",
        "F":"Organic Chemistry",
        "Tues/Fri 5/6":"Photography",
        "Mon 5/6":"LifeSkills"
        
    ]
    func pickerView( _ pickerView: UIPickerView, numberOfRowsInComponent component: Int) ->
        Int {
            if component == 0{
                return dayTypes.count
            } else if component == 1{
                return weekdays.count
            } else {
                return schedule.count
            }
    }
    
    func pickerView( _ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0{
            return dayTypes[row]
        } else if component == 1{
            return weekdays[row]
        } else {
            return schedule[row]
        }
    }
    
    
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var Button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var output = "It is a \(curWeekday), \(curDayType) day.\n\n"
    }
        
        //    let reg_A_Sched = ["A", "B", "D", "E", "G", "H"]
        //    let reg_C_Sched = ["C", "A", "F", "D", "I", "G"]
        //    let reg_B_Sched = ["B", "C", "E", "F", "H", "I"]
        //
        // let dbbl_A_Sched = ["A", "A", "D", "D", "G", "G"]
        // let dbbl_C_Sched = ["C", "C", "F", "F", "I", "I"]
        // let dbbl_B_Sched = ["B", "B", "E", "E", ""]
        
        //
        //        if curDayType == "A" {
        //            for item in reg_A_Sched{
        //                if let period = mySchedule[item]{
        //                    output += "\(item) period - " + period + "\n"
        //                }
        //            }
        //        }
        //        else if curDayType == "C"{
        //            for item in reg_C_Sched{
        //                if case let period == mySchedule[item] {
        //                    output += "\(item) period - " + period + "\n"
        //                    //added case in if let statement
        //                }
        //            }
        //        }
        //        else if curDayType == "B"{
        //            for item in reg_B_Sched{
        //                if case let period == mySchedule[item] {
        //                    output += "\(item) period - " + period + "\n"
        //                }
        //            }
        //        }
        
    
    
    
    // if (curDayType == "Monday") {
    
    
    
    @IBAction func getSchedule(_ sender: Any) {
        let dayTypeRow = pickerView.selectedRow(inComponent: 0)
        let ACBDay = dayTypes[dayTypeRow]
        
        let periodRotation:[String:[String]] = [
            "A":["A", "B", "D", "E"],
            "C":["C", "A", "F", "D"],
            "B":["B", "C", "E", "F"]
        ]
        var mySched = getScheduleForDay(periods: periodRotation[ACBDay]!, mySchedule: mySchedule)
        
        let dayweekRow = pickerView.selectedRow(inComponent: 1)
        if (dayweekRow == 0) {
            //Mon
            mySched += "life skills"
        } else if (dayweekRow == 1) {
          mySched += "Photography"
        } else if (dayweekRow == 2){
            mySched += "Free"
        } else if (dayweekRow == 4) {
            mySched += "Photagraphy"
      } else if (dayweekRow == 3) {
            mySched += "Free"
        }

        label.text = mySched
    }
    func getScheduleForDay(periods:[String], mySchedule:[String:String]) -> String {
        var output = ""
        for period in periods {
            output += "\(period) - "
            output += mySchedule[period] ?? "free period"
            output += "\n"
        }
        return output
    }
    
    
    
    
    
    
    
    
    
}

// if let statements = guard let -> make sure something is correct before running code (that an Int has a value other than nil for example)
