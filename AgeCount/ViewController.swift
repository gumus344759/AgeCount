//
//  ViewController.swift
//  AgeCount
//
//  Created by MacBook on 23/02/16.
//  Copyright © 2016 sgumus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var myPicker: UIDatePicker!
    
    let dateFormatter = NSDateFormatter()
    let currentDate = NSDate()

     
   // let myAge = myDOB.age      // 45

    var currentYear:Int = 0
    var currentMonty:Int = 0
    var currentDay:Int = 0
    
    var birthOfYear:Int = 0
    var birtohMonth:Int = 0
    var birthOfday:Int = 0
    
    @IBAction func ageCountShow(sender: AnyObject) {
    
      dateFormatter.dateFormat = "yyyy"
      dateOfBirthDaysCounting()

      print("MY Old:\(countYear())")
        ageLabel.text=String(countYear())
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components([.Day , .Month , .Year], fromDate: currentDate)
        
        currentYear=components.year
        currentMonty=components.month
        currentDay=components.day
        print(currentYear)
        print(currentMonty)
        print(currentDay)
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    func countYear()->Int{
        let currentdays=(currentYear*365)+(currentMonty*30)+(currentDay)
        let dateofBirthDays=(birthOfYear)+(birtohMonth)+(birthOfday)
        let manOld=(currentdays-dateofBirthDays)/365
        let mandays=(currentdays-dateofBirthDays)-manOld*365
        print("artan Gun \(mandays)")
        return manOld
    }
    
    
    func dateOfBirthDaysCounting()
    {
        let dateFormatter = NSDateFormatter()
        var yearPicker = dateFormatter.stringFromDate(myPicker.date)
        
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components([.Day , .Month , .Year], fromDate: currentDate)
        
        currentYear=components.year
        currentMonty=components.month
        currentDay=components.day
        print(currentYear)
        print(currentMonty)
        print(currentDay)
        
        
        dateFormatter.dateFormat = "yyyy"
        yearPicker = dateFormatter.stringFromDate(myPicker.date)
        birthOfYear=Int(yearPicker)!*365
        print(birthOfYear)
        
        dateFormatter.dateFormat = "MM"
        yearPicker = dateFormatter.stringFromDate(myPicker.date)
        birtohMonth=Int(yearPicker)!*30
        print(birtohMonth)
        
        dateFormatter.dateFormat = "dd"
        yearPicker = dateFormatter.stringFromDate(myPicker.date)
        birthOfday=Int(yearPicker)!
        print(birthOfday)
        

    }
}




