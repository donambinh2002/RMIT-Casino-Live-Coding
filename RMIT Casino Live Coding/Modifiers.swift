//
//  Modifiers.swift
//  RMIT Casino Live Coding
//
//  Created by Binh on 12/8/24.
//
import Foundation
import SwiftUI

struct ShadowModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .shadow(color: Color("ColorBlackTransparant"), radius: 10)
    }
}

struct scoreLabelStyle: ViewModifier{
    func body(content: Content) -> some View {
        content
            .foregroundStyle(Color("ColorWhite"))
            .font(.system(size: 10, weight: .bold, design: .rounded))
    }
}


struct scoreNumberStyle: ViewModifier{
    func body(content: Content) -> some View {
        content
            .foregroundStyle(Color("ColorWhite"))
            .font(.system(size: 20, weight: .heavy, design: .rounded))
    }
}

struct scoreCapsuleStyle: ViewModifier{
    func body(content: Content) -> some View {
        content
            .padding(.vertical, 10)
            .padding(.horizontal, 16)
            .background(Capsule().foregroundStyle(Color("ColorBlackTransparant")))
    }
}



struct ReelImageModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .scaledToFit()
            .frame(minWidth: 140, idealWidth: 200, maxWidth: 220, alignment: .center)
            .modifier(ShadowModifier())

    }
}

struct IconImageModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .scaledToFit()
            .frame(minWidth: 50, idealWidth: 60, maxWidth: 70, alignment: .center)

    }
}
