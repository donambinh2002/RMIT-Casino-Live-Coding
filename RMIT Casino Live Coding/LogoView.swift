//
//  LogoView.swift
//  RMIT Casino Live Coding
//
//  Created by Binh on 12/8/24.
//

import SwiftUI

struct LogoView: View {
    let logoFileName: String
    var body: some View {
        VStack{
            Image(logoFileName)
                .resizable()
                .scaledToFit()
                .frame(minWidth: 250, idealWidth: 280, maxWidth: 320, alignment: .center)
                .modifier(ShadowModifier())
        }
    }
}

#Preview {
    LogoView(logoFileName: "rmit-casino-welcome-logo")
}
