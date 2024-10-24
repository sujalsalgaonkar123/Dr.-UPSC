//
//  TestifyView.swift
//  Dr. UPSC
//
//  Created by Morning Star on 24/09/24.
//

import SwiftUI

struct TestifyView: View {
    var body: some View {
        HStack(spacing: 0){
            Spacer()
            VStack(alignment: .leading){
                HStack{
                    Image(systemName: "arrowtriangle.right.fill")
                        Text("TESTIFY ")
                        .font(.custom("Bangers", size: 24))
                }
                Text("Scared of UPSC-Prelims? Dr.UPSC's PRELIMS is your one-stop solution. Get ready to ace it.")
                    .multilineTextAlignment(.leading)
                    .font(.custom("MoreSugarThin", size: 12))
            }
            .frame(width: 170)
            Spacer()
            Image("Test-min")
                .resizable()
                .scaledToFit()
                .frame(width: 170, height: 170)
        }
        .foregroundStyle(Color(.black))
        .frame(width: 360, height: 150)
        .background(Color("Yellow"))
        .cornerRadius(10)
        .shadow(color: .black, radius: 1, x:5, y:5)
    }
}

#Preview {
    TestifyView()
}
