//
//  TabBar.swift
//  ctrl_brst
//
//  Created by Oğulcan Baytimur on 23/03/2024.
//

import SwiftUI

struct TabBar: View {
    @Binding var selectedTab: AppScreen
    private var filledImg: String {
        selectedTab.rawValue + "Selected"
    }
    var body: some View {
        VStack {
            HStack {
                ForEach(AppScreen.allCases, id: \.rawValue) { tab in
                    Spacer()
                    VStack {
                        Image(selectedTab == tab ? filledImg : "\(tab)")
                        Text("\(tab.rawValue.localizedCapitalized)")
                            .regularText()
                            .foregroundStyle(selectedTab == tab ? Color(hex: ColorCodes.mainPurple) : Color(hex: ColorCodes.supportingLightGrey))
                            .padding(.top, 1)
                    }
                    .onTapGesture {
                        withAnimation(.easeIn(duration: 0.1)) {
                            selectedTab = tab
                        }
                    }
                    Spacer()
                }
            }
            .frame(width: nil, height: 60)
            .background(Color(hex: 0xEEEEEE))
        }
    }
}
    
struct TabBar_Preview: PreviewProvider {
    static var previews: some View {
        TabBar(selectedTab: .constant(.home))
    }
}

