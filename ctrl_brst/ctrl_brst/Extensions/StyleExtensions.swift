//
//  StyleExtensions.swift
//  ctrl_brst
//
//  Created by Oğulcan Baytimur on 23/03/2024.
//

import SwiftUI

extension Color {
    init(hex: UInt) {
        self.init(
            red: Double((hex & 0xFF0000) >> 16) / 255.0,
            green: Double((hex & 0x00FF00) >> 8) / 255.0,
            blue: Double(hex & 0x0000FF) / 255.0
        )
    }
}

extension Text {
    func regularText() -> some View {
        self.font(.custom("Gordita Regular", size: 12))
            .foregroundStyle(Color(hex: ColorCodes.supportingLightGrey))
    }
    
    func mediumText() -> some View {
        self.font(.custom("Gordita Medium", size: 12))
    }
}
