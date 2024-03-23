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
    
    var body: some View {
        NavigationStack{
            Text("Home View")
                .navigationTitle("Hello, Cansu")
        }
    }
}

#Preview {
    HomeView()
}
