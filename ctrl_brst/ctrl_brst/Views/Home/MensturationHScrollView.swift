//
//  MensturationHScrollView.swift
//  ctrl_brst
//
//  Created by Oğulcan Baytimur on 23/03/2024.
//

import SwiftUI

struct MensturationHScrollView: View {
    var dates: [Date]
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 12) {
                ForEach(dates, id: \.self) { date in
                    MenstruatinCardView(date: date)
                        .padding(.vertical)
                }
            }
        }
        .defaultScrollAnchor(.center)
    }
}

#Preview {
    MensturationHScrollView(dates: [Date.now,Date.now,Date.now])
}
