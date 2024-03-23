//
//  ContentView.swift
//  ctrl_brst
//
//  Created by Oğulcan Baytimur on 23/03/2024.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    @State private var selectedTab: AppScreen = .home
    @State private var path = [Examination]()
    var body: some View {
        ZStack{
            VStack{
                TabView(selection: $selectedTab) {
                    HomeView()
                        .tag(AppScreen.home)
                    ControllerView()
                        .tag(AppScreen.examinations)
                }
            }
            VStack{
                Spacer()
                TabBar(selectedTab: $selectedTab)
            }
        }
    }
}

#Preview {
    ContentView()
}
