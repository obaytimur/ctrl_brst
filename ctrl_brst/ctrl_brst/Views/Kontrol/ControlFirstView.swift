//
//  ControlFirstView.swift
//  ctrl_brst
//
//  Created by Oğulcan Baytimur on 24/03/2024.
//

import SwiftUI

struct ControlFirstView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationStack {
            ZStack{
                Color(hex: ColorCodes.mainPurple)
                    .ignoresSafeArea()
                VStack{
                    HStack {
                        Button(action: {self.presentationMode.wrappedValue.dismiss() }) {
                            Image(systemName: "xmark")
                                .foregroundStyle(.white)
                                .imageScale(.large)
                        }
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
                    Image("controlFirst")
                    HStack{
                        Text("Visual Examination")
                            .font(.custom("Gordita Medium", size: 18))
                            .bold()
                            .foregroundStyle(Color(hex: ColorCodes.supporttingCream))
                            .padding()
                        Spacer()
                    }
                    ScrollView{
                        Text("Stand in front of the mirror with both arms freely at your sides, shoulders upright.\n \n Turning from the front and to both sides, look at the size and symmetry of the breasts, the color and shape of the skin, the nipples, the areas under the breasts and the armpits.\n \n Two breasts may not be the same size. This is a normal situation.")
                            .foregroundStyle(.white)
                            .padding()
                    }
                    HStack{
                        Spacer()
                        NavigationLink("next >", destination: ControlSecondView())
                            .foregroundStyle(Color(hex: ColorCodes.supporttingCream))
                            .padding()
                            .toolbar(.hidden, for: .tabBar)
                    }
                }
            }
            .navigationBarBackButtonHidden()
        }
    }
}

#Preview {
    ControlFirstView()
}
