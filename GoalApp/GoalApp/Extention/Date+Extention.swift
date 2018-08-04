//
//  Date+Extention.swift
//  GoalApp
//
//  Created by Stefani İvatgil on 3/08/18.
//  Copyright © 2018 Stefani İvatgil. All rights reserved.
//

import Foundation
extension Date
{
    func toString() -> String
    {
        let formatter = DateFormatter()
         formatter.dateFormat = "dd-MMM-yyyy"
        return formatter.string(from: self)
    }
    
}
