//
//  NormalView.swift
//  Dr. UPSC
//
//  Created by Morning Star on 24/09/24.
//

import SwiftUI

struct NormalView: View {
    var body: some View {
        ZStack{
            Color("Yellow")
                .ignoresSafeArea()
            VStack{
                HStack{
                    VStack(alignment: .leading){
                        Text("Explore")
                            .font(.custom("MoreSugarThin", size: 18))
                            .fontWeight(.semibold)
                            .foregroundStyle(Color(.black))
                        Text("OUR FREE RESOURCES")
                            .font(.custom("Bangers", size: 23))
                            .foregroundStyle(Color(.black))
                    }
                    Spacer()
                }
                
                .padding()
                //Banner Image
                Image("HomeView01")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 380, height: 250)
                HStack{
                    VStack(alignment: .leading){
                        HStack(spacing: -0){
                            Text("Explore")
                                .foregroundStyle(Color(.white))
                        }
                        Text("Free Resources")
                            .foregroundStyle(Color(.black))
                    }
                    .padding()
                    Spacer()
                    VStack(alignment: .trailing){
                        Text("View All")
                            .padding(.vertical, 7)
                            .padding(.horizontal, 12)
                            .background(.white.opacity(0.3))
                            .cornerRadius(30)
                            .foregroundStyle(Color.black)
                        Line()
                            .stroke(style: .init(dash: [6]))
                            .foregroundStyle(.white)
                            .frame(height: 2)
                        
                    }
                }
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(0...4, id: \.self){ i in
                            CoursesCardView()
                                .padding(.horizontal, 5)
                        }
                    }
                }
                
            }
        }
    }
}

#Preview {
    NormalView()
}
