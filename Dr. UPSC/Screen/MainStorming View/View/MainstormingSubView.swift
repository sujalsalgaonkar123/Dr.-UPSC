//
//  MainstormingSubView.swift
//  Dr. UPSC
//
//  Created by Morning Star on 24/09/24.
//

import SwiftUI

struct MainstormingSubView: View {
    var body: some View {
        NavigationStack{
            VStack{
                //HEADER
                HStack(spacing: 20){
                    NavigationLink {
                        ContentView().navigationBarBackButtonHidden(true)
                    } label: {
                        Image(systemName: "arrowtriangle.left.fill")
                            .foregroundStyle(Color(.black))
                    }
                    Text("MAINS COURSE ")
                        .font(.custom("Bangers", size: 28))
                        .foregroundStyle(Color(.black))
                    Spacer()
                }
                .padding()
                ScrollView{
                    MainsCoursesCardView()
                    MainsCoursesCardView()
                    MainsCoursesCardView()
                    MainsCoursesCardView()
                }
                Spacer()
            }
        }
    }
}

#Preview {
    MainstormingSubView()
}

struct MainsCoursesCardView: View {
    var body: some View {
        ZStack{
            VStack(spacing: -10){
                //Image Thumbnail
                Image("Image1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350, height: 230)
                //Courses Details
                HStack{
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 6, height: 50)
                        .foregroundColor(Color("Yellow"))
                    Text("Science and Tech. Hello Dummy DATA ")
                        .frame(width: 190)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.black)
                    Spacer()
                    NavigationLink {
                        HomeView()
                    } label: {
                        Image(systemName: "arrow.up.forward")
                            .font(.title)
                            .frame(width: 70, height: 40)
                            .background(Color("Yellow"))
                            .foregroundColor(.black.opacity(0.6))
                            .cornerRadius(50)
                            .overlay(){
                                RoundedRectangle(cornerRadius: 50)
                                    .stroke(style: StrokeStyle())
                                    .stroke(lineWidth: 1)
                                    .foregroundColor(.gray)
                            }
                    }

                }
                .padding()
                .frame(width: 350, height: 80)
                .background(Color("Primary"))
                
            }
            .cornerRadius(20)
            .padding(.vertical, 5)
            .padding(.horizontal, 5)

            .shadow(color: .black.opacity(0.3), radius: 10, x:10, y:10)
        }
    }
}
