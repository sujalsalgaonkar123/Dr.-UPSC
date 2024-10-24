//
//  AboutUsView.swift
//  Dr. UPSC
//
//  Created by Morning Star on 15/10/24.
//

import SwiftUI

struct AboutUsView: View {
    var body: some View {
        ZStack{
            Color.white
                .ignoresSafeArea()
            NavigationStack{
                VStack{
                    //HEADER
                    HStack(spacing: 20){
                        NavigationLink {
                            LegalInfoView().navigationBarBackButtonHidden(true)
                        } label: {
                            Image(systemName: "arrowtriangle.left.fill")
                                .foregroundStyle(Color(.black))
                        }
                        VStack{
                            VStack(alignment: .leading){
                                Text("ABOUT US ")
                                    .font(.custom("Bangers", size: 28))
                                    .foregroundStyle(Color(.black))
                                ZStack(alignment: .leading){
                                    RoundedRectangle(cornerRadius: 20)
                                        .frame(width: 220, height: 8)
                                        .foregroundStyle(Color.gray)
                                    
                                    RoundedRectangle(cornerRadius: 20)
                                        .frame(width: 80, height: 8)
                                        .foregroundStyle(Color.yellow)
                                    
                                }
                            }
                            
                        }
                        Spacer()
                        
                    }
                    VStack(alignment: .leading){
                        Text("+91 80055 29339")
                        Text("Help@Drupsc.com")
                        Text("An initaive of CIVILS WEB PRIVATE LIMITED")
                        Text("Address: Vijohn Tower, Plot No. 393, phase 02, idustrial Complex Dundahera, Industrial Complex Dundahera,")
                        Text("Gurgaon-122016, Haryana")
                    }
                    .padding(.top, 40)
                    Spacer()
                }
                .padding()
            }
        }
    }
}

#Preview {
    AboutUsView()
}
