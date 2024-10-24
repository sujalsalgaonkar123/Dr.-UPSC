//
//  HotsView.swift
//  Dr. UPSC
//
//  Created by Morning Star on 21/09/24.
//

import SwiftUI

struct HotsView: View {
    var body: some View {
        HotsCardView()
    }
}

#Preview {
    HotsView()
}

struct HotsCardView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.white)
                .frame(width: 360, height: 500)
                .shadow(color: .black.opacity(0.4), radius: 5, x:2, y: 2)
            VStack{
                Image("Image3")
                    .resizable()
                    .frame(width: 330, height: 200)
                    .scaledToFit()
                    .cornerRadius(10)
                VStack(alignment: .leading){
                    HStack{
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color("Yellow"))
                            .frame(width: 6, height: 60)
                        Text("India's Chandrayaan-3 Mission Successfully Lands on the Moon")
                            .font(.custom("FutureBook", size: 18))
                            .fontWeight(.semibold)
                        Spacer()
                    }
                    .padding(.bottom, 20)
                    Text("India's Chandrayaan-3 mission has made a successful landing on the lunar surface, marking a significant achievement for the country's space exploration program. This mission, developed by the Indian Space Research Organisation (ISRO), aims to explore the Moon's surface, conduct scientific experiments, and enhance India's capabilities in space technology.")
                        .font(Font .custom("FutureBook", size: 15))
                        .frame(width: 300)
                        .fontWeight(.thin)
                    
                    
                    
                }
                VStack{
                    HStack{
                        Spacer()
                        Image(systemName: "square.and.arrow.up")
                            .font(.title2)
                        Image(systemName: "bookmark")
                            .font(.title2)
                        
                    }
                }
                
                
            }
            .frame(width: 330)
            .padding()
        }
        
        
    }
}
