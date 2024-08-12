//
//  ContentView.swift
//  RMIT Casino Live Coding
//
//  Created by Binh on 12/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            // MARK: - Background
            LinearGradient(gradient: Gradient(colors: [Color("ColorRed"), Color("ColorPurple")]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack{
                
                // MARK: - Logo
                LogoView(logoFileName: "rmit-casino-welcome-logo")
                
                // MARK: - Score boards
                HStack {
                    HStack{
                        Text("Your\nMoney".uppercased())
                            .modifier(scoreLabelStyle())
                            .multilineTextAlignment(.leading)
                        
                        Text("100".uppercased())
                            .modifier(scoreNumberStyle())
                            .multilineTextAlignment(.leading)
                    }
                    .modifier(scoreCapsuleStyle())
                    
                    Spacer()
                    
                    HStack{
                        Text("100".uppercased())
                            .modifier(scoreNumberStyle())
                            .multilineTextAlignment(.trailing)
                        
                        Text("High\nScore".uppercased())
                            .modifier(scoreLabelStyle())
                            .multilineTextAlignment(.trailing)
                    }
                    .modifier(scoreCapsuleStyle())
                }
                
                // MARK: - Slot machine
                VStack{
                    
                    // MARK: - First Reel
                    ZStack{
                        Image("reel")
                            .resizable()
                            .modifier(ReelImageModifier())
                        Image("apple")
                            .resizable()
                            .modifier(IconImageModifier())
                    }
                    
                    HStack{
                        
                        // MARK: - Second Reel
                        ZStack{
                            Image("reel")
                                .resizable()
                                .modifier(ReelImageModifier())
                            Image("apple")
                                .resizable()
                                .modifier(IconImageModifier())
                        }
                        
                        Spacer()
                        
                        // MARK: - Third Reel
                        ZStack{
                            Image("reel")
                                .resizable()
                                .modifier(ReelImageModifier())
                            Image("apple")
                                .resizable()
                                .modifier(IconImageModifier())
                        }
                    }
                }
                
            }
            .padding()
            
        }
        
    }
}

#Preview {
    ContentView()
}
