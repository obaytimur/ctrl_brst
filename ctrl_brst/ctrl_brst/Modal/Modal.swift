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
