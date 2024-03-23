//
//  MenstruatinCardView.swift
//  ctrl_brst
//
//  Created by Oğulcan Baytimur on 23/03/2024.
//

import SwiftUI

struct MenstruatinCardView: View {
    var date: Date
    var body: some View {
        VStack {
            Text(date.formatted(Date.FormatStyle().weekday(.abbreviated)))
                .regularText()
                .padding(.top,10)
            Text(date.formatted(Date.FormatStyle().day(.twoDigits)))
                .font(.system(size: 28))
                .mediumText()
                .padding(.top, 5)
        }
        .frame(width: 76, height: 91)
        .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color(hex: ColorCodes.supporttingCream), lineWidth: 4)
            )
        
    }
}

#Preview {
    MenstruatinCardView(date: Date.now)
}
