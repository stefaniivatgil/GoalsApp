//
//  ViewController.swift
//  GoalApp
//
//  Created by Stefani İvatgil on 24/07/18.
//  Copyright © 2018 Stefani İvatgil. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
         //goals = CoreDataHelper.retrieveGoals()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
//       let fetch = Goal.fetchRequest()
        let goals = CoreDataHelper.retrieveGoals()
        print("here are your goals : \(goals)")
//        print("here are your goals : \(try! CoreDataHelper.context.fetch(fetch).count)")
        print("willlllll")
//        print(try! CoreDataHelper.context.fetch(fetch).last?.goal)
    }
    @IBAction func unwindToVC1(segue:UIStoryboardSegue) {
        // goals = CoreDataHelper.retrieveGoals()
       
        
    }
    


}

