//
//  SignUpView.swift
//  Dr. UPSC
//
//  Created by Morning Star on 21/09/24.
//

import SwiftUI

struct SignUpView: View {
    @State var UserName = ""
    @State var Email = ""
    var body: some View {
        NavigationStack{
            ZStack{
                Color.white
                    .ignoresSafeArea()
                VStack(spacing: 20){
                    //TOP NAV BTN
                    HStack{
                        NavigationLink {
                            LoginView().navigationBarBackButtonHidden(true)
                        } label: {
                            HStack{
                                Image(systemName: "arrowtriangle.left")
                                    .fontWeight(.bold)
                                    .padding(.vertical, 10)
                                    .padding(.horizontal, 10)
                                    .foregroundColor(.black)
                                    .overlay(){
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(style: StrokeStyle())
                                            .stroke(lineWidth: 2)
                                            .foregroundColor(Color("Yellow"))
                                    }
                                Spacer()
                            }
                        }
                    }
                    
                    //Body
                    HStack(alignment: .bottom){
                        VStack(alignment: .leading){
                            Text("SIGN UP ")
                                .font(.custom("Bangers", size: 38))
                            Text("One Step Closer to UPSC Success")
                                .font(.custom("Future", size: 15))
                        }
                        
                        Spacer()
                        Image("DogHappy")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 180)
                    }
                    .foregroundStyle(Color(.black))
                    
                    //INPUT FIELD
                    VStack{
                        HStack{
                            Text("Full Name")
                                .font(.custom("MoreSugarRegular", size: 16))
                                .foregroundColor(.black)
                            Spacer()
                        }
                        .frame(width: 360, height: 40)
                        
                        TextField("Enter your name", text: $UserName)
                            .padding()
                            .foregroundColor(.black)
                            .font(.custom("MoreSugarRegular", size: 16))
                            .frame(width: 360, height: 60)
                            .background(Color("Yellow").opacity(0.6))
                            .cornerRadius(10)
                    }
                    VStack{
                        HStack{
                            Text("Enter your email")
                                .font(.custom("MoreSugarRegular", size: 16))
                                .foregroundColor(.black)
                            Spacer()
                        }
                        .frame(width: 360, height: 40)
                        
                        TextField("Enter your email", text: $Email)
                            .padding()
                            .foregroundColor(.black)
                            .font(.custom("MoreSugarRegular", size: 16))
                            .frame(width: 360, height: 60)
                            .background(Color("Yellow").opacity(0.6))
                            .cornerRadius(10)
                    }
                    
                    //Next View BTN
                    HStack{
                        Spacer()
                        NavigationLink {
                            ContentView().navigationBarBackButtonHidden(true)
                        } label: {
                            HStack{
                                Text("SUBMIT    ")
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
                    
                    
                    
                    
                    Spacer()
                }
                .padding()
            }
            
        }
    }
}

#Preview {
    SignUpView()
}
