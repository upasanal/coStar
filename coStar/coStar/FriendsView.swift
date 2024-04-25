//
//  FriendsView.swift
//  coStar
//
//  Created by Upasana Lamsal on 4/18/24.
//

import SwiftUI

struct FriendsView: View {
    @State private var offsetY: CGFloat = 30
    @State private var bannerHeight: CGFloat = 10 // Initial height of BannerView
    @State private var showFriendsView = false
    @State private var showHomeView = false
    @State private var showShopView = false
    @State private var showYouView = false
    @State private var searchText = ""
    @State private var isRequested0: Bool = false
    @State private var isRequested1: Bool = false
    @State private var isRequested2: Bool = false
    @State private var isRequested3: Bool = false
    @State private var isRequested4: Bool = false
    @State private var isRequested5: Bool = false
    @State private var isRequested6: Bool = false
    @State private var isRequested7: Bool = false
    @State private var isRequested8: Bool = false
    @State private var sampleProfiles: [Profile]
 = [
    Profile(username: "ulamsal", sunSign: "Aries", moonSign: "Pisces", risingSign: "Leo", profilePicture: UIImage(named: "propic1")!, name: "upasana"),
    Profile(username: "aarya_nag", sunSign: "Scorpio", moonSign: "Taurus", risingSign: "Scorpio", profilePicture: UIImage(named: "propic4")!, name: "Aarya"),
    Profile(username: "hari.p", sunSign: "Libra", moonSign: "Aquarius", risingSign: "Leo", profilePicture: UIImage(named: "propic3")!, name: "Hari"),
    Profile(username: "anya.liu", sunSign: "Cancer", moonSign: "Cancer", risingSign: "Aries", profilePicture: UIImage(named: "propic4")!, name: "Anya"),
    Profile(username: "gkorrapati", sunSign: "Aquarius", moonSign: "Capricorn", risingSign: "Gemini", profilePicture: UIImage(named: "propic5")!, name: "Geethika"),
    Profile(username: "sarayu10", sunSign: "Scorpio", moonSign: "Libra", risingSign: "Cancer", profilePicture: UIImage(named: "propic1")!, name: "sararyu10"),
    Profile(username: "riapatel1", sunSign: "Aries", moonSign: "Pisces", risingSign: "Leo", profilePicture: UIImage(named: "propic2")!, name: "Ria"),
    Profile(username: "disha_patel", sunSign: "Virgo", moonSign: "Aries", risingSign: "Aries", profilePicture: UIImage(named: "propic3")!, name: "Disha"),
    Profile(username: "kevinlin1", sunSign: "Saggitarius", moonSign: "Scorpio", risingSign: "Cancer", profilePicture: UIImage(named: "propic4")!, name: "Kevin")
 ]

    
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                ScrollView {
                    VStack(spacing: 100) {
                        VStack(alignment: .leading) {
                            Text("𝌕   Add from contacts")
                                .foregroundColor(Color.black)
                                .font(.custom("Consolas", size: 15))
                                .padding(.top, -10)
                                .padding(.leading,20)
                            Rectangle()
                                .frame(width:370,height: 1) // Height of the gray line
                                .foregroundColor(Color.gray.opacity(0.3))
                                .padding(.top,20)
                                .padding(.leading,10)
                            Text("🔒  Add manually")
                                .foregroundColor(Color.black)
                                .font(.custom("Consolas", size: 15))
                                .padding(.vertical, 30)
                                .padding(.leading,20)
                        }
                        .padding(.leading, -20)
                        .padding(.top,60)
                        .padding()
                        .alignmentGuide(.leading) { _ in 10 }
                        
                        HStack{
                            FriendAddView(profile: sampleProfiles[0])
                                .padding(.leading, 150)
                            RequestButton1(isRequested: $isRequested0)
                                .padding(.leading, -280)
                        }
                        .padding(.top, -120)
                        HStack{
                            FriendAddView(profile: sampleProfiles[1])
                                .padding(.leading, 150)
                            RequestButton1(isRequested: $isRequested1)
                                .padding(.leading, -280)
                        }
                        .padding(.top, -135)
                        HStack{
                            FriendAddView(profile: sampleProfiles[2])
                                .padding(.leading, 150)
                            RequestButton1(isRequested: $isRequested2)
                                .padding(.leading, -280)
                        }
                        .padding(.top, -150)
                        HStack{
                            FriendAddView(profile: sampleProfiles[3])
                                .padding(.leading, 150)
                            RequestButton1(isRequested: $isRequested3)
                                .padding(.leading, -280)
                        }
                        .padding(.top, -165)
                        HStack{
                            FriendAddView(profile: sampleProfiles[4])
                                .padding(.leading, 150)
                            RequestButton1(isRequested: $isRequested4)
                                .padding(.leading, -280)
                        }
                        .padding(.top, -180)
                        HStack{
                            FriendAddView(profile: sampleProfiles[5])
                                .padding(.leading, 150)
                            RequestButton1(isRequested: $isRequested5)
                                .padding(.leading, -280)
                        }
                        .padding(.top, -195)
                        HStack{
                            FriendAddView(profile: sampleProfiles[6])
                                .padding(.leading, 150)
                            RequestButton1(isRequested: $isRequested6)
                                .padding(.leading, -280)
                        }
                        .padding(.top, -210)
                        
                        HStack{
                            FriendAddView(profile: sampleProfiles[7])
                                .padding(.leading, 150)
                            RequestButton1(isRequested: $isRequested7)
                                .padding(.leading, -280)
                        }
                        .padding(.top, -225)
                        
                        HStack{
                            FriendAddView(profile: sampleProfiles[8])
                                .padding(.leading, 150)
                            RequestButton1(isRequested: $isRequested8)
                                .padding(.leading, -280)
                        }
                        .padding(.top, -240)
                    }
                    .padding()
                    
                }
                .padding(.bottom, -110)// Makes ScrollView wider across the screen
                
                // Regular BannerView at the top
                SearchBarView()
                    .padding(.top, -10)
    
                
                BottomBannerView2(showFriendsView: $showFriendsView, showHomeView: $showHomeView, showShopView: $showShopView, showYouView: $showYouView)
                    .frame(width:800, height:5)
                    .padding(.top,240)
            }
            .navigationBarHidden(true)
            
            if showFriendsView {
                FriendsView()
            } else if showHomeView {
                ContentView()
            } else if showShopView {
                ShopView()
            } else if showYouView {
                YouView()
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct BottomBannerView2: View {
    @Binding var showFriendsView: Bool
    @Binding var showHomeView: Bool
    @Binding var showShopView: Bool
    @Binding var showYouView: Bool
    var body: some View {
        VStack {
            Rectangle()
                .frame(width:390,height: 1) // Height of the line
                .foregroundColor(Color.gray.opacity(0.3)) // Light gray line color
                .padding(.top,-10)
            Rectangle()
                .fill(Color.white)
                .frame(height: 80) // Height of the bottom banner
                .padding(.top,1015)
                .edgesIgnoringSafeArea(.bottom)
                .overlay(
                    VStack {
                        HStack(spacing: 18) {
                            Button(action: {
                                // Navigate to Home view
                                self.showHomeView = true
                                self.showFriendsView = false
                                self.showYouView = false
                                self.showShopView = false
                            }) {
                                NavigationLink(destination: ContentView()) {
                                    Text("HOME")
                                        .foregroundColor(Color.gray.opacity(1))
                                        .font(.custom("Consolas", size: 15))
                                }
                            }
                            Button(action: {
                                self.showHomeView = false
                                self.showFriendsView = true
                                self.showYouView = false
                                self.showShopView = false
                            }) {
                                    Text("FRIENDS")
                                        .foregroundColor(Color.black)
                                        .font(.custom("Consolas", size: 15))
                             
                            }
                            Image("starryNight")
                                  .resizable()
                                  .aspectRatio(contentMode: .fit)
                                  .frame(width: 90, height: 90) // Same size as the circle
                                  .foregroundColor(.black)
                                  .clipShape(Circle())
                            Button(action: {
                                self.showHomeView = false
                                self.showFriendsView = false
                                self.showYouView = false
                                self.showShopView = true
                            }) {
                                NavigationLink(destination: ShopView()) {
                                    Text("SHOP")
                                        .foregroundColor(Color.gray.opacity(1))
                                        .font(.custom("Consolas", size: 15))
                                }
                            }
                            Button(action: {
                                self.showHomeView = false
                                self.showFriendsView = false
                                self.showYouView = true
                                self.showShopView = false
                            }) {
                                NavigationLink(destination: YouView()) {
                                    Text("YOU")
                                        .foregroundColor(Color.gray.opacity(1))
                                        .font(.custom("Consolas", size: 15))
                                }
                            }
                        }
                        Rectangle()
                            .frame(width:350,height: 1) // Height of the gray line
                            .foregroundColor(Color.gray.opacity(0.3))
                    }
                    .padding(.horizontal,10) // Add horizontal padding
                        .padding(.top,1000)

                )
                .edgesIgnoringSafeArea(.bottom)
        }
    }
}



#Preview {
    FriendsView()
}
