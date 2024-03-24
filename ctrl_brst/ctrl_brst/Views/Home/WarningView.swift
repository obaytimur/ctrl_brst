//
//  WarningView.swift
//  ctrl_brst
//
//  Created by Oğulcan Baytimur on 24/03/2024.
//

import SwiftUI

struct WarningView: View {
    var text: String
    var color: Color
    var body: some View {
        HStack{
            Rectangle()
                .foregroundStyle(color)
                .frame(width: 6, height: 50)
            Text(text)
                .frame(width: 350, height: 50, alignment: .leading)
        }
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 5))
    }
}

#Preview {
    WarningView(text: "Sample Text", color: Color(hex: ColorCodes.mainPurple))
}
