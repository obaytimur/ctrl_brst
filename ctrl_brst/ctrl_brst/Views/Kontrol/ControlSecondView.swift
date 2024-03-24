//
//  ControlSecondView.swift
//  ctrl_brst
//
//  Created by Oğulcan Baytimur on 24/03/2024.
//

import SwiftUI

struct ControlSecondView: View {
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
                    Image("controlSecond")
                    HStack{
                        Text("Visual Examination")
                            .font(.custom("Gordita Medium", size: 18))
                            .bold()
                            .foregroundStyle(Color(hex: ColorCodes.supporttingCream))
                            .padding()
                        Spacer()
                    }
                    ScrollView{
                        Text("Repeat the same observation after raising your arms up or with both arms behind your head.\n\n Meanwhile, look at your breasts, nipples and armpit areas. Pay attention to any swelling in your armpits.")
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
                        NavigationLink("next >", destination: ControlThirdView())
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
    ControlSecondView()
}
