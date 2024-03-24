//
//  QuestionsView.swift
//  ctrl_brst
//
//  Created by Oğulcan Baytimur on 24/03/2024.
//

import SwiftUI

struct QuestionsView: View {
    @State var newExam: Examination = Examination(date: Date.now, isSwell: false, isHard: false, isChange: false)
    @State private var Q1: Bool? = nil
    @State private var Q2: Bool? = nil
    @State private var Q3: Bool? = nil
    var isDisabled: Bool {
        (Q1 != nil) && (Q2 != nil) && (Q3 != nil)
    }
    var body: some View {
        VStack{
            Text("Control")
                .font(.system(size: 28))
                .mediumText()
                .bold()
                .foregroundStyle(Color.black)
            VStack{
                HStack{
                    Text("Have you felt swelling or hardness in your breasts?")
                        .foregroundStyle(.black)
                        .font(.system(size: 16))
                        .regularText()
                    Spacer()
                }
                .padding()
                HStack{
                    Button{
                        Q1 = true
                    } label: {
                        Text("yes")
                            .foregroundStyle(.black)
                            .frame(width: 160, height: 40)
                            .background(Q1 == true ? Color(hex: ColorCodes.supporttingCream) : Color(hex: ColorCodes.background))
                            .clipShape(RoundedRectangle(cornerRadius: 40))
                    }
                    Button{
                        Q1 = false
                    } label: {
                        Text("no")
                            .foregroundStyle(.black)
                            .frame(width: 160, height: 40)
                            .background(Q1 == false ? Color(hex: ColorCodes.supporttingCream) : Color(hex: ColorCodes.background))
                            .clipShape(RoundedRectangle(cornerRadius: 40))
                    }
                }
            }
            .padding()
            Rectangle()
                .frame(width: 350, height: 1)
                .foregroundStyle(Color(hex: ColorCodes.supporttingCream))
            VStack{
                HStack{
                    Text("Have you noticed any redness, thickening, or change in appearance of your breast skin?")
                        .foregroundStyle(.black)
                        .font(.system(size: 16))
                        .regularText()
                    Spacer()
                }
                .padding()
                HStack{
                    Button{
                        Q2 = true
                    } label: {
                        Text("yes")
                            .foregroundStyle(.black)
                            .frame(width: 160, height: 40)
                            .background(Q2 == true ? Color(hex: ColorCodes.supporttingCream) : Color(hex: ColorCodes.background))
                            .clipShape(RoundedRectangle(cornerRadius: 40))
                    }
                    Button{
                        Q2 = false
                    } label: {
                        Text("no")
                            .foregroundStyle(.black)
                            .frame(width: 160, height: 40)
                            .background(Q2 == false ? Color(hex: ColorCodes.supporttingCream) : Color(hex: ColorCodes.background))
                            .clipShape(RoundedRectangle(cornerRadius: 40))
                    }
                }
            }
            .padding()
            Rectangle()
                .frame(width: 350, height: 1)
                .foregroundStyle(Color(hex: ColorCodes.supporttingCream))
            VStack{
                HStack{
                    Text("Are there hardening, changes in appearance or discharge from the nipples?")
                        .foregroundStyle(.black)
                        .font(.system(size: 16))
                        .regularText()
                    Spacer()
                }
                .padding()
                HStack{
                    Button{
                        Q3 = true
                    } label: {
                        Text("yes")
                            .foregroundStyle(.black)
                            .frame(width: 160, height: 40)
                            .background(Q3 == true ? Color(hex: ColorCodes.supporttingCream) : Color(hex: ColorCodes.background))
                            .clipShape(RoundedRectangle(cornerRadius: 40))
                    }
                    Button{
                        Q3 = false
                    } label: {
                        Text("no")
                            .foregroundStyle(.black)
                            .frame(width: 160, height: 40)
                            .background(Q3 == false ? Color(hex: ColorCodes.supporttingCream) : Color(hex: ColorCodes.background))
                            .clipShape(RoundedRectangle(cornerRadius: 40))
                    }
                }
            }
            .padding()
            Button{
                
            } label: {
                Text("Save and complete")
                    .foregroundStyle(.white)
                    .frame(width: 320, height: 50)
                    .background(!isDisabled == true ? Color(hex: ColorCodes.supportingLightGrey) : Color(hex: ColorCodes.mainPurple))
                    .clipShape(RoundedRectangle(cornerRadius: 50))
            }
            .disabled(!isDisabled)
            Button{
                
            } label: {
                Text("Cancel")
                    .foregroundStyle(Color(hex: ColorCodes.mainPurple))
                    .frame(width: 320, height: 50)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                    .overlay(RoundedRectangle(cornerRadius: 50).stroke(Color(hex: ColorCodes.mainPurple), lineWidth: 2))
            }
        }
    }
}

#Preview {
    QuestionsView(newExam: Examination(date: Date.now, isSwell: true, isHard: true, isChange: false))
}
