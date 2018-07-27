//
//  GoalViewController.swift
//  GoalApp
//
//  Created by Stefani İvatgil on 26/07/18.
//  Copyright © 2018 Stefani İvatgil. All rights reserved.
//

import Foundation
import UIKit

class GoalViewController: UIViewController {
    var goal: Goal?
    
    @IBOutlet weak var startTimePicker: UIDatePicker!
    
    @IBOutlet weak var endTimePicker: UIDatePicker!
    @IBOutlet weak var goalTextField: UITextField!
    @IBOutlet weak var saveButton: UIButton!
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
        guard let identifier = segue.identifier else { return }
        
        switch identifier {
        case "save" where goal != nil:
            goal!.goal = goalTextField.text ?? ""
            goal!.starttime = startTimePicker.date
            goal!.endtime = endTimePicker.date
            
            
            CoreDataHelper.saveGoal()
            
         case "save" where goal == nil:
            let newGoal = CoreDataHelper.newGoal()
                newGoal.goal = goalTextField.text ?? ""
                newGoal.starttime = startTimePicker.date
                newGoal.endtime = endTimePicker.date
        
                CoreDataHelper.saveGoal()
        case "cancel":
            print("cancel button pressed")
            
            
        default:
            break
        }
        
    }
    
    
    
    
    
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        self.performSegue(withIdentifier: "save", sender: nil)
    }
}

