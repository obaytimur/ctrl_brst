//
//  HomeView.swift
//  ctrl_brst
//
//  Created by Oğulcan Baytimur on 23/03/2024.
//

import SwiftData
import SwiftUI

struct HomeView: View {
    @Environment(\.modelContext) var modelContext
    @Query var examinations: [Examination]
    @State var user: User = User(mensturationDay: Date.now)
    
    init() {
     // Large Navigation Title
     UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(Color(hex: ColorCodes.supporttingCream))]
   }

    var body: some View {
        NavigationStack{
            VStack{
                Color(hex: ColorCodes.mainPurple)
                    .frame(height: 160)
                ScrollView {
                    VStack {
                        HStack{
                            Text("Calender")
                                .font(.system(size: 20))
                                .mediumText()
                            Spacer()
                            NavigationLink("Mensturation", destination: MensturationGeneralView())
                        }
                        .padding()
                        MensturationHScrollView(dates: user.generalDays)
                            .padding()
                        
                        WarningView(text: "X days left until the examination", color: Color(hex: ColorCodes.mainPurple))
                            .padding()
                        WarningView(text: "X days left until the examination", color: Color(hex: ColorCodes.period))
                        WarningView(text: "X days left until the examination", color: Color(hex: ColorCodes.ovulation))
                        
                        
                        Spacer()
                    }
                }
                .background(Color(hex: ColorCodes.background))
            }
            .ignoresSafeArea()
            .navigationBarTitle("Hello, Cansu!")
            .toolbar{
                ToolbarItem{
                    Button{
                        
                    } label: {
                        Image(systemName: "gearshape")
                            .foregroundStyle(Color(hex: ColorCodes.supporttingCream))
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
