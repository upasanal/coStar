//
//  ChartView.swift
//  coStar
//
//  Created by Upasana Lamsal on 4/21/24.
//

import SwiftUI

struct ChartView: View {
    var body: some View {
        ScrollView{
            Image("chart")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 430, height: 550) // Same size as the circle
                .padding(.top, 0)
            Image("chart1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 430, height: 550) // Same size as the circle
                .padding(.top, -40)
            Image("chart2")
                .resizable()
                .frame(width: 430, height: 580) // Same size as the circle
                .padding(.top, -40)
            Image("chart3")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 430, height: 550) // Same size as the circle
                .padding(.top, -35)
            Image("chart4")
                .resizable()
                .frame(width: 430, height: 580) // Same size as the circle
                .padding(.top, -30)
        }
        .padding(.bottom, -30)
    }
}

#Preview {
    ChartView()
}
