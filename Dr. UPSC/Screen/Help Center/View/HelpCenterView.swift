//
//  HelpCenterView.swift
//  Dr. UPSC
//
//  Created by Morning Star on 26/09/24.
//

import SwiftUI

struct HelpCenterView: View {
    var body: some View {
        ZStack{
            Color.white
                .ignoresSafeArea()
            VStack{
                //HEADER
                HStack(spacing: 20){
                    NavigationLink {
                        MySpaceView().navigationBarBackButtonHidden(true)
                    } label: {
                        Image(systemName: "arrowtriangle.left.fill")
                            .foregroundStyle(Color(.black))
                    }
                    Text("HELP CENTER ")
                        .font(.custom("Bangers", size: 28))
                        .foregroundStyle(Color(.black))
                    Spacer()
                }
                .padding()
                
                HStack{
                    VStack{
                        Text("FAQ'S")
                            .font(.custom("Bangers", size: 28))
                        ZStack(alignment: .leading){
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(.gray)
                                .frame(width: 130, height: 6)
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(.yellow)
                                .frame(width: 30, height: 6)
                            
                        }
                    }
                    Spacer()
                }
                
                HStack{
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 5, height: 40)
                        .foregroundColor(Color("Yellow"))
                    Text("How can I access the courses?")
                        .font(.system(size: 14))
                    Spacer()
                    NavigationLink {
                        HomeView()
                    } label: {
                        Image(systemName: "arrow.right")
                            .frame(width: 50, height: 30)
                            .background(Color("Yellow"))
                            .cornerRadius(40)
                            .foregroundStyle(Color(.black))
                    }
                }
                .padding()
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .background(Color(.yellow).opacity(0.4))
                .cornerRadius(10)
                
                
                HStack{
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 5, height: 40)
                        .foregroundColor(Color("Yellow"))
                    Text("How do I download study materials for offline use?")
                        .font(.system(size: 14))
                    Spacer()
                    NavigationLink {
                        HomeView()
                    } label: {
                        Image(systemName: "arrow.right")
                            .frame(width: 50, height: 30)
                            .background(Color("Yellow"))
                            .cornerRadius(40)
                            .foregroundStyle(Color(.black))
                    }
                }
                .padding()
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .background(Color(.yellow).opacity(0.4))
                .cornerRadius(10)
                
                HStack{
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 5, height: 40)
                        .foregroundColor(Color("Yellow"))
                    Text("How often is the course content updates")
                        .font(.system(size: 14))
                    Spacer()
                    NavigationLink {
                        HomeView()
                    } label: {
                        Image(systemName: "arrow.right")
                            .frame(width: 50, height: 30)
                            .background(Color("Yellow"))
                            .cornerRadius(40)
                            .foregroundStyle(Color(.black))
                    }
                }
                .padding()
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .background(Color(.yellow).opacity(0.4))
                .cornerRadius(10)
                
                HStack{
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 5, height: 40)
                        .foregroundColor(Color("Yellow"))
                    Text("How can I Access the Courses?")
                        .font(.system(size: 14))
                    Spacer()
                    NavigationLink {
                        HomeView()
                    } label: {
                        Image(systemName: "arrow.right")
                            .frame(width: 50, height: 30)
                            .background(Color("Yellow"))
                            .cornerRadius(40)
                            .foregroundStyle(Color(.black))
                    }
                }
                .padding()
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .background(Color(.yellow).opacity(0.4))
                .cornerRadius(10)
                
                HStack{
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 5, height: 40)
                        .foregroundColor(Color("Yellow"))
                    Text("How do I Download study materials for offline use?")
                        .font(.system(size: 14))
                    Spacer()
                    NavigationLink {
                        HomeView()
                    } label: {
                        Image(systemName: "arrow.right")
                            .frame(width: 50, height: 30)
                            .background(Color("Yellow"))
                            .cornerRadius(40)
                            .foregroundStyle(Color(.black))
                    }
                }
                .padding()
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .background(Color(.yellow).opacity(0.4))
                .cornerRadius(10)
                
                HStack{
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 5, height: 40)
                        .foregroundColor(Color("Yellow"))
                    Text("How often is the course content updates")
                        .font(.system(size: 14))
                    Spacer()
                    NavigationLink {
                        HomeView()
                    } label: {
                        Image(systemName: "arrow.right")
                            .frame(width: 50, height: 30)
                            .background(Color("Yellow"))
                            .cornerRadius(40)
                            .foregroundStyle(Color(.black))
                    }
                }
                .padding()
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .background(Color(.yellow).opacity(0.4))
                .cornerRadius(10)
                
                HStack{
                    VStack{
                        Text("CONTACT US")
                            .font(.custom("Bangers", size: 28))
                        ZStack(alignment: .leading){
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(.gray)
                                .frame(width: 130, height: 6)
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(.yellow)
                                .frame(width: 30, height: 6)
                            
                        }
                    }
                    Spacer()
                }
                .padding(.top, 20)
                
                HStack{
                    VStack{
                        Image("whatsapp")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 50)
                           Text("WHATSAPP ")
                            .font(.custom("Bangers", size: 14))
                    }
                    .frame(width: 80, height: 80)
                    .background(Color("Yellow"))
                    .cornerRadius(10)
                    VStack{
                        Image(systemName: "phone.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 50)
                           Text("CALL US ")
                            .font(.custom("Bangers", size: 14))
                    }
                    .frame(width: 80, height: 80)
                    .background(Color("Yellow"))
                    .cornerRadius(10)
                    Spacer()
                }
                
                
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    HelpCenterView()
}
