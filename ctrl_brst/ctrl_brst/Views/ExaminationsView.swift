//
//  ControllerView.swift
//  ctrl_brst
//
//  Created by Oğulcan Baytimur on 23/03/2024.
//

import SwiftUI

struct ControllerView: View {
    
    init() {
     // Large Navigation Title
     UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(Color(hex: ColorCodes.mainPurple))]
   }
    
    var body: some View {
        NavigationStack{
            VStack{
                Color(hex: ColorCodes.mainPink)
                    .frame(height: 160)
                ScrollView{
                    HStack{
                        Text("History")
                            .font(.system(size: 20))
                            .mediumText()
                        Spacer()
                        NavigationLink{
                            ControlFirstView()
                                .toolbar(.hidden, for: .tabBar)
                        } label: {
                            Text("add an examination")
                                .foregroundStyle(Color(hex: ColorCodes.mainPurple))
                        }
                    }
                    .padding()
                }
            }
            .ignoresSafeArea()
            .navigationTitle("Examinations")
            .toolbar{
                ToolbarItem{
                    Button{
                        
                    } label: {
                        Image(systemName: "gearshape")
                            .foregroundStyle(Color(hex: ColorCodes.mainPurple))
                    }
                }
            }
        }
    }
}

#Preview {
    ControllerView()
}
