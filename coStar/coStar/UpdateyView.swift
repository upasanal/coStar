//
//  UpdateyView.swift
//  coStar
//
//  Created by Upasana Lamsal on 4/22/24.
//

import SwiftUI

struct UpdateyView: View {
    @State private var selectedNumber: Int? = 20

    var body: some View {
        ScrollView {
            UpdateView(selectedNumber: $selectedNumber)
            VStack(spacing: 20) {
                if let selectedNumber = selectedNumber {
                    switch selectedNumber {
                        case 19:
                            Image("update19")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 400, height: 550) // Fill the available space
                            .padding(.top, -35)
                        Image("update191")
                        .resizable()
                        .frame(width: 400, height: 550) // Fill the available space
                        .padding(.top, -70)
                    
                        case 20:
                            Image("update20")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 400, height: 550)
                                .padding(.top, -33)
                        Image("update201")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 400, height: 550)
                            .padding(.top, -76.5)
                        case 21:
                            Image("update24")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 400, height: 550)
                                .padding(.top, -32)
                        Image("update241")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 400, height: 550)
                            .padding(.top, -60)
                        case 22:
                            Image("update22")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 400, height: 550)
                                .padding(.top, -55)
                        Image("update221")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 400, height: 550)
                            .padding(.top, -110)
                        case 23:
                            Image("update23")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 400, height: 550)
                                .padding(.top, -27)
                        Image("update231")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 400, height: 550)
                            .padding(.top, -130)
                        default:
                            Image("defaultImage")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 400, height: 550)
                                .padding(.top, -60)
                    }
                } else {
                    Image("defaultImage")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 400, height: 550)
                        .padding(.top, -60)
                }
            }
            .padding(.bottom, -80)
        }
    }
}

#Preview {
    UpdateyView()
}
