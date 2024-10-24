//
//  PrecallView.swift
//  Dr. UPSC
//
//  Created by Morning Star on 24/09/24.
//

import SwiftUI

struct PrecallView: View {
    var body: some View {
        HStack(spacing: 0){
            Spacer()
            VStack(alignment: .leading){
                HStack{
                    Image(systemName: "arrowtriangle.right.fill")
                        Text("PRECALL")
                        .font(.custom("Bangers", size: 24))
                }
                Text("Scared of UPSC-Prelims? Dr.UPSC's PRELIMS is your one-stop solution. Get ready to ace it.")
                    .multilineTextAlignment(.leading)
                    .font(.custom("MoreSugarThin", size: 12))
            }
            .frame(width: 170)
            Spacer()
            Image("pre-min")
                .resizable()
                .scaledToFit()
                .frame(width: 170, height: 170)
        }
        .foregroundStyle(Color(.black))
        .frame(width: 360, height: 150)
        .background(Color("Precall"))
        .cornerRadius(10)
        .shadow(color: .black, radius: 1, x:5, y:5)
    }
}

#Preview {
    PrecallView()
}
