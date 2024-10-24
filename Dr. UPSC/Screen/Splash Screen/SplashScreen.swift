//
//  SplashScreen.swift
//  Dr. UPSC
//
//  Created by Morning Star on 20/09/24.
//

import SwiftUI

struct SplashScreen: View {

    @State var isActive: Bool = false
    
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            if self.isActive {
                WelcomeView1()
            } else {
                Image("drupsclogo-min")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height: 250)
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 12.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
        
}

#Preview {
    SplashScreen()
}
