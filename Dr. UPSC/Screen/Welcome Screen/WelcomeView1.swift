//
//  WelcomeView1.swift
//  Dr. UPSC
//
//  Created by Morning Star on 20/09/24.
//

import SwiftUI

struct WelcomeView1: View {
    var body: some View {
        NavigationStack{
            ZStack {
                Color.white
                    .ignoresSafeArea()
                VStack(alignment: .leading, spacing: 10){
                    //Dr.UPSC
                    HStack(alignment: .bottom){
                        VStack(alignment: .leading){
                            Text("Dr.")
                            Text("UPSC")
                        }
                        .font(.custom("MoreSugarRegular", size: 22))
                        .foregroundStyle(Color("Pink"))
                        Spacer()
                        Image("dog")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200,height: 160)
                    }
                    
                    
                    Text("Hey Champ")
                        .font(.custom("MoreSugarRegular", size: 15))
                        .foregroundStyle(Color("Blue"))
                    
                    //Body
                    VStack(alignment: .leading, spacing: 5){
                        Text("I feel your pain:(")
                        Text("I have been there.")
                        Text("Don't worry.")
                        Text("I'm here now.")
                    }
                    .font(.custom("MoreSugarRegular", size: 22))
                    .foregroundStyle(Color.black)
                    
                    //Button
                    NavigationLink {
                        WelcomeView2().navigationBarBackButtonHidden(true)
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
                        .padding(.vertical, 30)
                        
                    }

                    
                }
                .padding()
            }
            .frame(maxWidth: 360)
        }
    }
}

#Preview {
    WelcomeView1()
}
