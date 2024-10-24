//
//  WelcomeView2.swift
//  Dr. UPSC
//
//  Created by Morning Star on 20/09/24.
//

import SwiftUI

struct WelcomeView2: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color.white
                    .ignoresSafeArea()
                VStack(alignment: .leading){
                    //HEAD LINE
                    Text("THE FASTES GROWING LEARNING")
                        .font(.custom("Bangers", size: 28))
                        .foregroundColor(.black)
                    Text("PLATFORM FOR UPSC")
                        .font(.custom("Bangers", size: 28))
                        .foregroundColor(.black)
                    
                    //BODY
                    HStack{
                        //PART 1
                        VStack(alignment: .trailing, spacing:30){
                            Image("welcomebanner")
                                .resizable()
                                .scaledToFit()
                            Image("welcomebanner")
                                .resizable()
                                .scaledToFit()
                            Text("Don't Just Take Our Word for it. Here are the Numbers, See For Yourself")
                                .multilineTextAlignment(.trailing)
                                .font(.custom("MoreSugarThin", size: 18))
                                .foregroundColor(.black)
                        }
                        .frame(width: 180)
                        //PART 2
                        VStack(alignment: .trailing, spacing:30){
                            Text("Don't Just Take Our Word for it. Here are the Numbers, See For Yourself")
                                .multilineTextAlignment(.trailing)
                                .foregroundColor(.black)
                                .font(.custom("MoreSugarThin", size: 18))
                            Image("welcomebanner")
                                .resizable()
                                .scaledToFit()
                            Image("welcomebanner")
                                .resizable()
                                .scaledToFit()
                            
                        }
                        .frame(width: 180)
                    }
                    .padding(.vertical, 20)
                    
                    
                    //NEXT VIEW BTN
                    HStack{
                        Spacer()
                        NavigationLink {
                            LoginView().navigationBarBackButtonHidden(true)
                        } label: {
                            HStack{
                                Text("GET STARTED  ")
                                    .font(.custom("Bangers", size: 28))
                                Image(systemName: "arrowtriangle.forward.fill")
                                    .font(.title)
                            }
                            .padding()
                            .padding(.horizontal, 10)
                            .background(Color("Yellow"))
                            .cornerRadius(10)
                            .foregroundColor(.black)
                            .shadow(color: .black.opacity(0.7), radius: 1, x:5, y:5)
                            
                        }
                    }
                    
                }
                .padding()
                .frame(width: 380)
            }
        }
    }
}

#Preview {
    WelcomeView2()
}
