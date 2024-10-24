//
//  LegalInfoView.swift
//  Dr. UPSC
//
//  Created by Morning Star on 26/09/24.
//

import SwiftUI

struct LegalInfoView: View {
    var body: some View {
        ZStack{
            Color.white
                .ignoresSafeArea()
            NavigationStack{
                VStack{
                    //HEADER
                    HStack(spacing: 20){
                        NavigationLink {
                            MySpaceView().navigationBarBackButtonHidden(true)
                        } label: {
                            Image(systemName: "arrowtriangle.left.fill")
                                .foregroundStyle(Color(.black))
                        }
                        Text("LEGAL & INFO ")
                            .font(.custom("Bangers", size: 28))
                            .foregroundStyle(Color(.black))
                        Spacer()
                    }
                    .padding()
                    
                    VStack{
                        NavigationLink {
                            AboutUsView().navigationBarBackButtonHidden(true)
                        } label: {
                            HStack{
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width: 6, height: 45)
                                    .foregroundStyle(Color("Yellow"))
                                Text("ABOUT US")
                                    .foregroundStyle(Color.black)
                                Spacer()
                            }
                            .padding(.leading, 20)
                            .frame(maxWidth: .infinity)
                            .frame(height: 70)
                            .background(Color.yellow.opacity(0.1))
                            .padding(.horizontal, 13)
                        }
                        NavigationLink {
                            PrivacyPolicyView().navigationBarBackButtonHidden(true)
                        } label: {
                            HStack{
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width: 6, height: 45)
                                    .foregroundStyle(Color("Yellow"))
                                Text("PRIVACY POLICY")
                                    .foregroundStyle(Color.black)
                                Spacer()
                            }
                            .padding(.leading, 20)
                            .frame(maxWidth: .infinity)
                            .frame(height: 70)
                            .background(Color.yellow.opacity(0.1))
                            .padding(.horizontal, 13)
                        }
                        NavigationLink {
                            TermsAndConditionsView().navigationBarBackButtonHidden(true)
                        } label: {
                            HStack{
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width: 6, height: 45)
                                    .foregroundStyle(Color("Yellow"))
                                Text("TERMS AND CONDITIONS")
                                    .foregroundStyle(Color.black)
                                Spacer()
                            }
                            .padding(.leading, 20)
                            .frame(maxWidth: .infinity)
                            .frame(height: 70)
                            .background(Color.yellow.opacity(0.1))
                            .padding(.horizontal, 13)
                        }
                        NavigationLink {
                            RefundPolicyView().navigationBarBackButtonHidden(true)
                        } label: {
                            HStack{
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width: 6, height: 45)
                                    .foregroundStyle(Color("Yellow"))
                                Text("REFUND POLICY")
                                    .foregroundStyle(Color.black)
                                Spacer()
                            }
                            .padding(.leading, 20)
                            .frame(maxWidth: .infinity)
                            .frame(height: 70)
                            .background(Color.yellow.opacity(0.1))
                            .padding(.horizontal, 13)
                        }
                        Spacer()
                        
                        
                    }
                }
            }
        }
    }
}

#Preview {
    LegalInfoView()
}
