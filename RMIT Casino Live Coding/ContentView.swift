//
//  ContentView.swift
//  RMIT Casino Live Coding
//
//  Created by Binh on 12/8/24.
//

import SwiftUI

struct ContentView: View {
    let icons = ["apple", "bar", "bell", "cherry", "clover", "diamond", "grape", "heart", "horseshoe", "lemon", "melon", "money", "orange"]
    
    @State private var reels = [0,1,2]
    
    // MARK: - Spin logic
    func spinReels(){
        reels[0] = Int.random(in: 0...icons.count - 1)
        reels[1] = Int.random(in: 0...icons.count - 1)
        reels[2] = Int.random(in: 0...icons.count - 1)
    }
    
    // MARK: - Check winning logic
    // MARK: - Player win logic
    // MARK: - Highscore logic
    // MARK: - Player lose logic
    // MARK: - Bet 20 logic
    // MARK: - Bet 10 logic
    // MARK: - Gameover
    // MARK: - Reset game logic
    
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
                .padding()
                
                // MARK: - Slot machine
                VStack{
                    
                    // MARK: - First Reel
                    ZStack{
                        Image("reel")
                            .resizable()
                            .modifier(ReelImageModifier())
                        Image(icons[reels[0]])
                            .resizable()
                            .modifier(IconImageModifier())
                    }
                    
                    HStack{
                        
                        // MARK: - Second Reel
                        ZStack{
                            Image("reel")
                                .resizable()
                                .modifier(ReelImageModifier())
                            Image(icons[reels[1]])
                                .resizable()
                                .modifier(IconImageModifier())
                        }
                        
                        Spacer()
                        
                        // MARK: - Third Reel
                        ZStack{
                            Image("reel")
                                .resizable()
                                .modifier(ReelImageModifier())
                            Image(icons[reels[2]])
                                .resizable()
                                .modifier(IconImageModifier())
                        }
                    }
                    
                    // MARK: - Spin button
                    Button(action: {
                        print("Spin!!")
                        spinReels()
                    }, label: {
                        Image("spin")
                            .resizable()
                            .modifier(ReelImageModifier())
                    })
                    
                    
                }
                
                // MARK: - Footer
                HStack{
                    
                    // MARK: - Bet 20
                    HStack(spacing: 20){
                        Text("20")
                            .modifier(BetCapsuleModifier())
                        
                        Image("casino-chips")
                            .resizable()
                            .modifier(CasinoChipModifier())
                            
                    }
                    
                    Spacer()
                    
                    // MARK: - Bet 10
                    HStack(spacing: 20){
                        Image("casino-chips")
                            .resizable()
                            .modifier(CasinoChipModifier())
                        
                        Text("10")
                            .modifier(BetCapsuleModifier())
                        
                    }
                }
                .padding()
                
            }
          
            
        }
        
    }
}

#Preview {
    ContentView()
}
