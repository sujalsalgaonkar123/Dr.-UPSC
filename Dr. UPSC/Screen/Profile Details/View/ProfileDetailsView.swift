//
//  ProfileDetailsView.swift
//  Dr. UPSC
//
//  Created by Morning Star on 26/09/24.
//

import SwiftUI

struct ProfileDetailsView: View {
    @State var FullName = ""
    @State var Email = ""
    @State var MobileNumber = ""
    @State var AttemptYear = ""
    @State var AttemptNumber = ""
    
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
                    Text("PROFILE DETAILS ")
                        .font(.custom("Bangers", size: 28))
                        .foregroundStyle(Color(.black))
                    Spacer()
                }
                .padding()
                
                ScrollView(showsIndicators: false){
                    //FULL NAME
                    HStack{
                        VStack(alignment: .leading){
                            Text("Full Name")
                                .font(.custom("MoreSugarRegular", size: 17))
                            TextField("Enter your name", text: $FullName)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .frame(height: 60)
                                .background(Color("Yellow").opacity(0.6))
                                .cornerRadius(20)
                                .font(.custom("MoreSugarRegular", size: 17))
                        }
                    }
                    //EMAIL
                    HStack{
                        VStack(alignment: .leading){
                            Text("Email")
                                .font(.custom("MoreSugarRegular", size: 17))
                            TextField("Enter your email", text: $Email)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .frame(height: 60)
                                .background(Color("Yellow").opacity(0.6))
                                .cornerRadius(20)
                                .font(.custom("MoreSugarRegular", size: 17))
                        }
                    }
                    //Mobile Number
                    HStack{
                        VStack(alignment: .leading){
                            Text("Mobile Number")
                                .font(.custom("MoreSugarRegular", size: 17))
                            TextField("Enter Mobile Number", text: $MobileNumber)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .frame(height: 60)
                                .background(Color("Yellow").opacity(0.6))
                                .cornerRadius(20)
                                .font(.custom("MoreSugarRegular", size: 17))
                        }
                    }
                    //Attempt Year
                    HStack{
                        VStack(alignment: .leading){
                            Text("Attempt Year")
                                .font(.custom("MoreSugarRegular", size: 17))
                            TextField("Enter your Attempt Year", text: $AttemptYear)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .frame(height: 60)
                                .background(Color("Yellow").opacity(0.6))
                                .cornerRadius(20)
                                .font(.custom("MoreSugarRegular", size: 17))
                        }
                    }
                    //No .of ATTEMPTS
                    HStack{
                        VStack(alignment: .leading){
                            Text("No. of Attempt")
                                .font(.custom("MoreSugarRegular", size: 17))
                            TextField("Enter your email", text: $AttemptNumber)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .frame(height: 60)
                                .background(Color("Yellow").opacity(0.6))
                                .cornerRadius(20)
                                .font(.custom("MoreSugarRegular", size: 17))
                        }
                    }
                    //Option
                    HStack{
                        VStack(alignment: .leading){
                            Text("I am a")
                                .font(.custom("MoreSugarRegular", size: 17))
                            TextField("Enter your email", text: $AttemptNumber)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .frame(height: 60)
                                .background(Color("Yellow").opacity(0.6))
                                .cornerRadius(20)
                                .font(.custom("MoreSugarRegular", size: 17))
                        }
                    }
                    //Geneder
                    HStack{
                        VStack(alignment: .leading){
                            Text("Gender")
                                .font(.custom("MoreSugarRegular", size: 17))
                            TextField("Select...", text: $AttemptNumber)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .frame(height: 60)
                                .background(Color("Yellow").opacity(0.6))
                                .cornerRadius(20)
                                .font(.custom("MoreSugarRegular", size: 17))
                        }
                    }
                }
                
                HStack{
                    Spacer()
                    HStack{
                        Text("SAVE  ")
                            .font(.custom("Bangers", size: 28))
                    }
                    .padding()
                    .padding(.horizontal, 10)
                    .background(Color("Yellow"))
                    .cornerRadius(10)
                    .foregroundColor(.black)
                    .shadow(color: .black.opacity(0.7), radius: 1, x:5, y:5)
                }
                
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    ProfileDetailsView()
}
