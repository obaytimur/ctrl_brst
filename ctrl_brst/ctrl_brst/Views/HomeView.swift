//
//  HomeView.swift
//  ctrl_brst
//
//  Created by Oğulcan Baytimur on 23/03/2024.
//

import SwiftData
import SwiftUI

struct HomeView: View {
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
                            NavigationLink {
                                MensturationGeneralView()
                            } label: {
                                Text("Menstruation >")
                                    .foregroundStyle(Color(hex: ColorCodes.mainPurple))
                            }
                        }
                        .padding()
                        MensturationHScrollView(dates: user.generalDays)
                            .padding()
                        
                        WarningView(text: "X days left until the examination", color: Color(hex: ColorCodes.mainPurple))
                            .padding()
                        WarningView(text: "X days left until the menstruation", color: Color(hex: ColorCodes.period))
                        WarningView(text: "X days left until the ovulation", color: Color(hex: ColorCodes.ovulation))
                        
                        
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
