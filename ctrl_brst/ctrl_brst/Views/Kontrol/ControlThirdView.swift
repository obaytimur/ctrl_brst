//
//  ControlThirdView.swift
//  ctrl_brst
//
//  Created by Oğulcan Baytimur on 24/03/2024.
//

import SwiftUI

struct ControlThirdView: View {
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
                    Image("controlThird")
                    HStack{
                        Text("Visual Examination")
                            .font(.custom("Gordita Medium", size: 18))
                            .bold()
                            .foregroundStyle(Color(hex: ColorCodes.supporttingCream))
                            .padding()
                        Spacer()
                    }
                    ScrollView{
                        Text("Press your hands firmly on your waist, on your pelvis. Lean forward, slightly projecting your shoulders.\n\n Look at your breasts from the front and from both sides. Pay attention to whether there is any shrinkage or collapse in the skin.")
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
                        NavigationLink("next >", destination: ControlFourthView())
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
    ControlThirdView()
}
