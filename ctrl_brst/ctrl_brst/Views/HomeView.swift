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
    
    var body: some View {
        NavigationStack{
            VStack{
                MensturationHScrollView(dates: user.ovulationDays)
                Spacer()
            }
                .navigationTitle("Hello, Cansu")
        }
    }
}

#Preview {
    HomeView()
}
