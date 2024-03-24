//
//  ControlFourthView.swift
//  ctrl_brst
//
//  Created by Oğulcan Baytimur on 24/03/2024.
//

import SwiftUI

struct ControlFourthView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationStack {
            ZStack{
                Color(hex: ColorCodes.mainPurple)
                    .ignoresSafeArea()
                VStack{
                    HStack {
                        Spacer()
                        Text("Control")
                            .font(.system(size: 28))
                            .mediumText()
                            .bold()
                            .foregroundStyle(Color(hex: ColorCodes.supporttingCream))
                        Spacer()
                        Button{
                            
                        } label: {
                            Image("takeNote")
                        }
                    }
                    .padding()
                    Image("controlFourth")
                    HStack{
                        Text("Palpation")
                            .font(.custom("Gordita Medium", size: 18))
                            .bold()
                            .foregroundStyle(Color(hex: ColorCodes.supporttingCream))
                            .padding()
                        Spacer()
                    }
                    ScrollView{
                        Text("Get into a lying position and place your first right arm behind your head.\n\n Begin checking by making small circular movements with the tips of the three middle fingers of your hand and slightly increasing the pressure.\n\n Use your left hand for the right breast and your right hand for the left breast. Feel your entire breast and repeat the same on your other breast.")
                            .foregroundStyle(.white)
                            .padding()
                    }
                    HStack{
                        Button(action: {self.presentationMode.wrappedValue.dismiss() }){
                            Text("< back")
                                .foregroundStyle(Color(hex: ColorCodes.supporttingCream))
                                .padding()
                        }
                        Spacer()
                        NavigationLink("next >", destination: ControlFifthView())
                            .foregroundStyle(Color(hex: ColorCodes.supporttingCream))
                            .padding()
                    }
                }
            }
            .navigationBarBackButtonHidden()
        }
    }
}

#Preview {
    ControlFourthView()
}
