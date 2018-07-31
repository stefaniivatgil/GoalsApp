//
//  GoalViewController.swift
//  GoalApp
//
//  Created by Stefani İvatgil on 26/07/18.
//  Copyright © 2018 Stefani İvatgil. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class GoalViewController: UIViewController {
    
    var goal: Goal?
    
    @IBOutlet weak var startTimePicker: UIDatePicker!
    
    @IBOutlet weak var endTimePicker: UIDatePicker!
    @IBOutlet weak var goalTextField: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    
    @IBOutlet weak var goalLabel: UILabel!
    
    @IBOutlet weak var doneButton: UIButton!
    
    @IBOutlet weak var wellDoneLabel: UILabel!
    @IBOutlet weak var doneButton2: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // 1
        if let goal = goal {
            goalTextField.text = goal.goal
        }
        
        // 2
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        /*
        guard let identifier = segue.identifier else { return }
        
        switch identifier {
        case "save" where goal != nil:
            
            print("goal is not nill")
            
            goal!.goal = goalTextField.text ?? ""
            goal!.starttime = startTimePicker.date
            goal!.endtime = endTimePicker.date
            
            
            CoreDataHelper.saveGoal()
            
         case "save" where goal == nil:
            print("goal is nill")
            
            let newGoal = CoreDataHelper.newGoal()
                newGoal.goal = goalTextField.text ?? ""
                newGoal.starttime = startTimePicker.date
                newGoal.endtime = endTimePicker.date
        
                CoreDataHelper.saveGoal()
//        case "cancel":
//            print("cancel button pressed")
            
            
        default:
            break
 } */
        
    }
    
    
    
    
    
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        
        goal = CoreDataHelper.newGoal()
        goal?.goal = goalTextField.text ?? ""
        CoreDataHelper.saveGoal()
        
        goalLabel.isHidden = false
        goalLabel.text = goal?.goal
        goalTextField.isHidden = true
        doneButton.isHidden = false
    }
    
    @IBAction func doneButtonTapped(_ sender: UIButton) {
        doneButton.isHidden = true
        doneButton2.isHidden = false
      
        
        guard let myGoal = goal?.goal else { return }
        print("Help me God \(myGoal)")
        let attributeString: NSMutableAttributedString =  NSMutableAttributedString(string:"\(String(describing: myGoal))")
        
        let style = NSMutableParagraphStyle()
        style.lineSpacing = 24 // change line spacing between paragraph like 36 or 48
        style.minimumLineHeight = 20 // change line spacing between each line like 30 or 40
//        attributeString.addAttribute(NSAttributedStringKey.paragraphStyle, value: style, range: NSRange(location: 0, length: (goal?.goal?.count)!))
        attributeString.addAttribute(NSAttributedStringKey.strikethroughStyle, value: 2, range: NSMakeRange(0, attributeString.length))
        attributeString.addAttribute(NSAttributedStringKey.kern, value: 2, range: NSMakeRange(0, attributeString.length))
        
//        attributeString.addAttribute(NSAttributedStringKey.strikethroughStyle, value: 2, range: NSMakeRange(0, attributeString.length))
        
//        attributeString.addAttribute(NSStrikethroughStyleAttributeName, value: 2, range: NSMakeRange(0, attributeString.length))
        
       
        print("Help me God \(attributeString)")
        goalLabel.attributedText = attributeString
        wellDoneLabel.isHidden = false
        
        
    }
   
    @IBAction func doneButton2Tapped(_ sender: UIButton) {
        doneButton.isHidden = false
        doneButton2.isHidden = true
        
        
        
    }
    
    
}

