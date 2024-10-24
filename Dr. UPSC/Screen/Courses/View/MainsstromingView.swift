//
//  MainsstromingView.swift
//  Dr. UPSC
//
//  Created by Morning Star on 24/09/24.
//

import SwiftUI

struct MainsstromingView: View {
    var body: some View {
        HStack(spacing: 0){
            Image("mains-min")
                .resizable()
                .scaledToFit()
                .frame(width: 170, height: 170)
            Spacer()
            VStack(alignment: .leading){
                HStack{
                    Image(systemName: "arrowtriangle.right.fill")
                        Text("MAINSTORMING")
                        .font(.custom("Bangers", size: 24))
                }
                Text("Scared of UPSC-Prelims? Dr.UPSC's PRELIMS is your one-stop solution. Get ready to ace it.")
                    .font(.custom("MoreSugarThin", size: 12))
            }
            .foregroundStyle(Color(.white))
            .frame(width: 170)
        }
        .frame(width: 360, height: 150)
        .background(Color("MainStorming"))
        .cornerRadius(10)
        .shadow(color: .black, radius: 1, x:5, y:5)
    }
}

#Preview {
    MainsstromingView()
}
