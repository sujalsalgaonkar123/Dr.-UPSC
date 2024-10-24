//
//  LoginView.swift
//  Dr. UPSC
//
//  Created by Morning Star on 20/09/24.
//

import SwiftUI

struct LoginView: View {
    @State var MobileNumber = ""
    var body: some View {
        NavigationStack{
            ZStack{
                Color.white
                    .ignoresSafeArea()
                VStack(spacing:50){
                    //BACK VIEW BRN
                    NavigationLink {
                        WelcomeView2().navigationBarBackButtonHidden(true)
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
                    
                    //BODY
                    VStack(alignment: .trailing){
                        Text("LOGIN ")
                            .font(.custom("Bangers", size: 28))
                            .foregroundColor(.black)
                        ZStack(alignment: .leading){
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 120, height: 8)
                                .foregroundColor(.black.opacity(0.6))
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 50, height: 8)
                                .foregroundColor(Color("Yellow"))
                        }
                    }
                    
                    VStack{
                        HStack{
                            Text("Mobile Number")
                                .font(.custom("MoreSugarRegular", size: 16))
                                .foregroundColor(.black)
                            Spacer()
                        }
                        .frame(width: 360, height: 40)
                        
                        TextField("Mobile Number", text: $MobileNumber)
                            .keyboardType(.numbersAndPunctuation)
                            .padding()
                            .foregroundColor(.black)
                            .font(.custom("MoreSugarRegular", size: 16))
                            .frame(width: 360, height: 60)
                            .background(Color("Yellow").opacity(0.6))
                            .cornerRadius(10)
                    }
                    
                    //NEXT VIEW BTN
                    HStack{
                        Spacer()
                        NavigationLink {
                            OTPView().navigationBarBackButtonHidden(true)
                        } label: {
                            HStack{
                                Text("NEXT    ")
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
    LoginView()
}
