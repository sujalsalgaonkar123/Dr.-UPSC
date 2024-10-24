//
//  CoursesView.swift
//  Dr. UPSC
//
//  Created by Morning Star on 24/09/24.
//

import SwiftUI

struct CoursesView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color.white
                    .ignoresSafeArea()
                VStack{
                    //Header
                    HStack{
                        Text("COURSES")
                            .font(.custom("Bangers", size: 23))
                            .foregroundStyle(.black)
                        Spacer()
                        NavigationLink {
                            HomeView().navigationBarBackButtonHidden(true)
                        } label: {
                            Text("MY COURSES")
                                .font(.custom("Bangers", size: 20))
                                .foregroundStyle(Color("Blue"))
                                .padding(.horizontal, 30)
                                .padding(.vertical, 15)
                                .background(Color(.white))
                                .cornerRadius(10)
                                .shadow(color: .black, radius: 1, x:4, y:4)
                                .overlay(){
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(style: StrokeStyle.init(lineWidth: 2))
                                        .foregroundStyle(Color("Blue"))
                                }
                        }
                        
                        
                        
                    }
                    .padding(.bottom, 30)
                    //BODY
                    VStack(spacing: 20){
                        //PreCall
                        NavigationLink {
                            PreCallSubView().navigationBarBackButtonHidden(true)
                        } label: {
                            PrecallView()
                        }

                        
                        //MAINSTORING
                        
                        NavigationLink {
                            MainsCoursesCardView().navigationBarBackButtonHidden(true)
                        } label: {
                            MainsstromingView()
                        }

                        
                        //TESTIFY
                        NavigationLink {
                            TestifySubView().navigationBarBackButtonHidden(true)
                        } label: {
                            TestifyView()
                        }
                    }
                    Spacer()
                }
            }
            .padding()
        }
    }
}

#Preview {
    CoursesView()
}
