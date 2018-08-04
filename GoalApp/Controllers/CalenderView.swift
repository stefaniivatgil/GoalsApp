//
//  calender.swift
//  GoalApp
//
//  Created by Stefani İvatgil on 31/07/18.
//  Copyright © 2018 Stefani İvatgil. All rights reserved.
//

//import UIKit
//import KDCalendar
//
//
//protocol CalendarViewDataSource {
//    func startDate() -> NSDate // UTC Date
//    func endDate() -> NSDate   // UTC Date
//}
//protocol CalendarViewDelegate {
//    func calendar(_ calendar : CalendarView, canSelectDate date : Date) -> Bool /* optional */
//    func calendar(_ calendar : CalendarView, didScrollToMonth date : Date) -> Void
//    func calendar(_ calendar : CalendarView, didSelectDate date : Date, withEvents events: [CalendarEvent]) -> Void
//    func calendar(_ calendar : CalendarView, didDeselectDate date : Date) -> Void /* optional */
//    func calendar(_ calendar : CalendarView, didLongPressDate date : Date) -> Void /* optional */
//}
//
//class CalendarView: CalendarViewDataSource, CalendarViewDelegate {
//    
//    @IBOutlet weak var dayPicker: UIDatePicker!
//    @IBOutlet weak var monthPicker: UISegmentedControl!
//    
//    // THis is q ,ethod fro, the protocol
////    func startDate() -> NSDate {
////
////        var a = NSDate()
////
////
////        return NSDate()
////
////    }
//    
//    func startDate() -> NSDate {
//        var dateComponents = DateComponents()
//        dateComponents.month = -3
//        let today = Date()
//        let threeMonthsAgo = self.calendarView.calendar.date(byAdding: dateComponents, to: today)
//        //        FIXME: chqnge to NSDqte
//        return threeMonthsAgo
//    }
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        let today = Date()
//        self.calendarView.setDisplayDate(today, animated: false)
//    }
//
//    func endDate() -> NSDate {
//        
//        let date = NSDate()
//        return date
//    }
//    
//}
