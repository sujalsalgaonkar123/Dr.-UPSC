//
//  HomeView.swift
//  Dr. UPSC
//
//  Created by Morning Star on 21/09/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack{
            
            ZStack {
                Color.white
                    .ignoresSafeArea()
                VStack{
                    //Header
                    HStack{
                        Text("Dr. UPSC")
                            .font(.custom("MoreSugarRegular", size: 24))
                            .foregroundStyle(Color("Pink"))
                        Spacer()
                        NavigationLink {
                            MySpaceView().navigationBarBackButtonHidden(true)
                        } label: {
                            Image("face")
                                .resizable()
                                .scaledToFit()
                                .clipShape(Circle())
                                .frame(width: 60, height: 60)
                        }
                    }
                    .padding(.horizontal, 20)
                    .background(Color.white)
                    ScrollView(showsIndicators: false){
                        BasicView()
                        NormalView()
                    }
                    
                }
            }
        }
    }
}

#Preview {
    HomeView()
}

//DOT LINE
struct Line:Shape{
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        return path
    }
}


//COURSES CARD VIEW
struct CoursesCardView: View {
    var body: some View {
        ZStack {
            VStack(spacing: -5){
                Image("Image2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 200)
                HStack{
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 5, height: 50)
                        .foregroundStyle(Color("Yellow"))
                    VStack(alignment: .leading, spacing: 5){
                        Text("MAINStorming-2025")
                            .font(.custom("MAINStorming-2025", size: 17))
                        Text("2499/- Rs")
                            .font(.custom("MoreSugarThin", size: 14))
                    }
                    Spacer()
                    Image(systemName: "arrow.right")
                        .font(.title2)
                }
                .padding()
                .frame(width: 300, height: 80)
                .background(Color("Precall"))
            }
            .cornerRadius(20)
            .padding(.bottom)
        }
        .shadow(color: .gray.opacity(0.2), radius: 10, x:10, y:10)
    }
    
}

