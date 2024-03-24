//
//  ControlFifthView.swift
//  ctrl_brst
//
//  Created by Oğulcan Baytimur on 24/03/2024.
//

import SwiftUI

struct ControlFifthView: View {
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
                    Image("controlFifth")
                    HStack{
                        Text("Palpation")
                            .font(.custom("Gordita Medium", size: 18))
                            .bold()
                            .foregroundStyle(Color(hex: ColorCodes.supporttingCream))
                            .padding()
                        Spacer()
                    }
                    ScrollView{
                        Text("Put your arm to the side, check the armpit area with your other hand.\n\n Then check for discharge by squeezing the nipple with the thumb and forefinger of your other hand. Repeat the same check on your other breast.")
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
                        NavigationLink("next >", destination: QuestionsView())
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
    ControlFifthView()
}
