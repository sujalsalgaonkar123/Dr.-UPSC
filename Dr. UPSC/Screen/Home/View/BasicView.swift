//
//  BasicView.swift
//  Dr. UPSC
//
//  Created by Morning Star on 24/09/24.
//

import SwiftUI

struct BasicView: View {
    var body: some View {
        VStack{
            HStack{
                VStack{
                    Text("Welcome Champ")
                        .font(.custom("MoreSugarThin", size: 18))
                        .foregroundStyle(Color(.black))
                    Text("TO OUR DR. UPSC")
                        .font(.custom("Bangers", size: 23))
                        .foregroundStyle(Color(.black))
                }
                Spacer()
            }
            //Banner Image
            Image("HomeBanner1")
                .resizable()
                .scaledToFit()
                .frame(width: 320, height: 260)
            HStack{
                VStack(alignment: .leading){
                    HStack(spacing: -0){
                        Text("Explore O")
                            .foregroundStyle(Color("Yellow"))
                        Text("ur Top")
                            .foregroundStyle(Color(.black))
                    }
                    Text("Courses")
                        .foregroundStyle(Color(.black))
                }
                Spacer()
                VStack(alignment: .trailing){
                    Text("View All")
                        .padding(.vertical, 7)
                        .padding(.horizontal, 12)
                        .background(.gray.opacity(0.4))
                        .cornerRadius(30)
                        .foregroundStyle(Color.black)
                    
                    Line()
                        .stroke(style: .init(dash: [6]))
                        .foregroundStyle(.yellow)
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
        .padding()
    }
}

#Preview {
    BasicView()
}
