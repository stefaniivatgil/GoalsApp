//
//  CoreDataHelper.swift
//  GoalApp
//
//  Created by Stefani İvatgil on 26/07/18.
//  Copyright © 2018 Stefani İvatgil. All rights reserved.
//

import Foundation
import UIKit
import CoreData

struct CoreDataHelper {
    static let context: NSManagedObjectContext = {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            fatalError()
        }
        
        let persistentContainer = appDelegate.persistentContainer
        let context = persistentContainer.viewContext
        
        return context
    }()

    static func newGoal() -> Goal {
    let goal = NSEntityDescription.insertNewObject(forEntityName: "Goal", into: context) as! Goal
    
    return goal
}
    static func saveGoal() {
        do {
            try context.save()
        }
        catch let error {
            print("Could not save\(error.localizedDescription)")
        }
    }
    static func retrieveGoals() -> [Goal] {
        do {
            let fetchRequest = NSFetchRequest<Goal>(entityName: "Goal")
            let results = try context.fetch(fetchRequest)
            
            return results
        } catch let error {
            print ("Could not fetch \(error.localizedDescription)")
            return []
        
        }
        
    }
}
