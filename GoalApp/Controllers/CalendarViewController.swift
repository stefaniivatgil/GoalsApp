//
//  CalendarViewController.swift
//  GoalApp
//
//  Created by Stefani İvatgil on 1/08/18.
//  Copyright © 2018 Stefani İvatgil. All rights reserved.
//

import UIKit
import KDCalendar

class CalendarViewController: UIViewController {

   
    @IBOutlet weak var calendar: CalendarView!
    
    @IBOutlet weak var goalLabelCalendar: UILabel!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calendar.delegate = self
        calendar.dataSource = self
        // Do any additional setup after loading the view.
        calendar.multipleSelectionEnable = false
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let today = Date()
        self.calendar.setDisplayDate(today, animated: false)
    }
   
  

}

extension CalendarViewController: CalendarViewDelegate, CalendarViewDataSource {
    func endDate() -> Date {
        return Date()
    }
    
    func calendar(_ calendar: CalendarView, didScrollToMonth date: Date) {
        
    }
    
    func calendar(_ calendar: CalendarView, didSelectDate date: Date, withEvents events: [CalendarEvent]) {
        print(date)
        
    //func date(_)
        //fubc find goal(date) -> Goal
        
        //label.text = goal.goal
    }
    
    func calendar(_ calendar: CalendarView, canSelectDate date: Date) -> Bool {
        return true
    }
    
    func calendar(_ calendar: CalendarView, didDeselectDate date: Date) {
        
    }
    
    func calendar(_ calendar: CalendarView, didLongPressDate date: Date) {
        
    }
    
    func startDate() -> Date {
        
        return Date()
    }
    func addEvent(_ title: String, date: Date, duration hours: NSInteger = 1) -> Bool
    {
        return true
    
        
    }
    }
   
    



