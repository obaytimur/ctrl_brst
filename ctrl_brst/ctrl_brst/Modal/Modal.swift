//
//  Modal.swift
//  ctrl_brst
//
//  Created by Oğulcan Baytimur on 23/03/2024.
//

import Foundation
import SwiftData


@Model
class Examination {
    var date: Date = Date.now
    
    init(date: Date) {
        self.date = date
    }
}

@Observable
class User {
    var mensturationDay: Date = Date.now
    
    var ovulationDays: [Date] {
        var dates = [Date]()
        for index in 1..<5 {
            dates.append(mensturationDay.addingTimeInterval(86400*(14+Double(index))))
        }
        return dates
    }
    
    init(mensturationDay: Date) {
        self.mensturationDay = mensturationDay
    }
}
