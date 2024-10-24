//
//  MySpaceView.swift
//  Dr. UPSC
//
//  Created by Morning Star on 23/09/24.
//

import SwiftUI

struct MySpaceView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color.white
                    .ignoresSafeArea()
                VStack{
                    //HEADER
                    HStack(spacing: 20){
                        NavigationLink {
                            ContentView().navigationBarBackButtonHidden(true)
                        } label: {
                            Image(systemName: "arrowtriangle.left.fill")
                                .foregroundStyle(Color(.black))
                        }
                        Text("MY SPACE ")
                            .font(.custom("Bangers", size: 28))
                            .foregroundStyle(Color(.black))
                        Spacer()
                    }
                    .padding()
                    HStack{
                        VStack(alignment: .center){
                            Text("HEY! AYUSH IOS DEV ")
                                .font(.custom("Bangers", size: 24))
                                .foregroundStyle(Color(.black).opacity(0.7))
                            
                            
                            ZStack(alignment: .leading){
                                
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width: 250, height: 6)
                                    .foregroundStyle(Color(.black).opacity(0.8))
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width: 50, height: 6)
                                    .foregroundStyle(Color("Yellow"))
                            }
                            
                        }
                        Spacer()
                    }
                    .padding(.vertical, 20)
                    Divider()
                    
                    NavigationLink {
                        ProfileDetailsView().navigationBarBackButtonHidden(true)
                    } label: {
                        HStack(spacing: 20){
                            Image(systemName: "arrowtriangle.right.fill")
                                .foregroundStyle(Color("Yellow"))
                                .font(.title3)
                                .shadow(color: .black, radius: 1, x:2, y:2)
                            VStack(alignment: .leading, spacing: 10){
                                Text("PROFILE DETAILS")
                                    .font(.custom("Bangers", size: 18))
                                Text("Update Your Personal Information And Customize Your Profile")
                                    .multilineTextAlignment(.leading)
                                    .font(.custom("MoreSugarThin", size: 12))
                            }
                            .foregroundStyle(Color.black)
                            Spacer()
                        }
                        .padding()
                    }
                    Divider()
                    
                    NavigationLink {
                        HelpCenterView().navigationBarBackButtonHidden(true)
                    } label: {
                        HStack(spacing: 20){
                            Image(systemName: "arrowtriangle.right.fill")
                                .foregroundStyle(Color("Yellow"))
                                .font(.title3)
                                .shadow(color: .black, radius: 1, x:2, y:2)
                            VStack(alignment: .leading, spacing: 10){
                                Text("YOUR COURSES ")
                                    .font(.custom("Bangers", size: 18))
                                Text("View and manage your enrolled courses and progress")
                                    .multilineTextAlignment(.leading)
                                    .font(.custom("MoreSugarThin", size: 12))
                            }
                            .foregroundStyle(Color(.black))
                            Spacer()
                        }
                        .padding()
                    }

                    Divider()
                    
                    NavigationLink {
                        HelpCenterView().navigationBarBackButtonHidden(true)
                    } label: {
                        
                        HStack(spacing: 20){
                            Image(systemName: "arrowtriangle.right.fill")
                                .foregroundStyle(Color("Yellow"))
                                .font(.title3)
                                .shadow(color: .black, radius: 1, x:2, y:2)
                            VStack(alignment: .leading, spacing: 10){
                                Text("HELP CENTER ")
                                    .font(.custom("Bangers", size: 18))
                                Text("Access support resources and get assistance with your issues")
                                    .multilineTextAlignment(.leading)
                                    .font(.custom("MoreSugarThin", size: 12))
                            }
                            .foregroundStyle(Color(.black))
                            Spacer()
                        }
                        .padding()
                    }

                    
                    Divider()
                    NavigationLink {
                        LegalInfoView().navigationBarBackButtonHidden(true)
                    } label: {
                        HStack(spacing: 20){
                            Image(systemName: "arrowtriangle.right.fill")
                                .foregroundStyle(Color("Yellow"))
                                .font(.title3)
                                .shadow(color: .black, radius: 1, x:2, y:2)
                            VStack(alignment: .leading, spacing: 10){
                                Text("LEGAL & INFO")
                                    .font(.custom("Bangers", size: 18))
                                Text("Review important legal documents and policies.")
                                    .font(.custom("MoreSugarThin", size: 12))
                            }
                            .foregroundStyle(Color.black)
                            Spacer()
                        }
                        .padding()
                    }
                    Divider()
                    HStack(spacing: 20){
                        Image(systemName: "arrowtriangle.right.fill")
                            .foregroundStyle(Color("Yellow"))
                            .font(.title3)
                            .shadow(color: .black, radius: 1, x:2, y:2)
                        VStack(alignment: .leading, spacing: 10){
                            Text("LOG OUT")
                                .font(.custom("Bangers", size: 18))
                            Text("Sign out of your account and end your session.")
                                .font(.custom("MoreSugarThin", size: 12))
                        }
                        Spacer()
                    }
                    .padding()
                    Divider()
                    
                    
                    
                    Spacer()
                }
            }
            
        }
    }
}

#Preview {
    MySpaceView()
}
