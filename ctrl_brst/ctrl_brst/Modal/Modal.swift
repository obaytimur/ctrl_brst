//
//  Modal.swift
//  ctrl_brst
//
//  Created by Oğulcan Baytimur on 23/03/2024.
//

import Foundation
import Observation

struct Examination {
    var date: Date = Date.now
    var isSwell: Bool = false
    var isHard: Bool = false
    var isChange: Bool = false
    
    init(date: Date, isSwell: Bool, isHard: Bool, isChange: Bool) {
        self.date = date
        self.isSwell = isSwell
        self.isHard = isHard
        self.isChange = isChange
    }
}

@Observable
class User {
    var examinations: [Examination] = Array()
    var mensturationDay: Date = Date.now
    
    var ovulationDays: [Date] {
        var dates = [Date]()
        for index in 1..<5 {
            dates.append(mensturationDay.addingTimeInterval(86400*(14+Double(index))))
        }
        return dates
    }
    
    var generalDays: [Date] {
        var dates = [Date]()
        for index in -28..<29 {
            dates.append(Date.now.addingTimeInterval(86400*Double(index)))
        }
        return dates
    }
    
    init(mensturationDay: Date) {
        self.mensturationDay = mensturationDay
    }
}
