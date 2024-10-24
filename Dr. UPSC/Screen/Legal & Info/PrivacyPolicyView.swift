//
//  PrivacyPolicyView.swift
//  Dr. UPSC
//
//  Created by Morning Star on 15/10/24.
//

import SwiftUI

struct PrivacyPolicyView: View {
    var body: some View {
        ZStack{
            Color.white
                .ignoresSafeArea()
            NavigationStack{
                ScrollView(showsIndicators: false){
                    VStack{
                        //HEADER
                        HStack(spacing: 20){
                            NavigationLink {
                                LegalInfoView().navigationBarBackButtonHidden(true)
                            } label: {
                                Image(systemName: "arrowtriangle.left.fill")
                                    .foregroundStyle(Color(.black))
                            }
                                VStack(alignment: .leading){
                                    Text("PRIVACY POLICY ")
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
                            Spacer()
                            
                        }
                        VStack(spacing: 20){
                            VStack(alignment: .leading){
                                Text("TERMS AND CONDITIONS FOR DR. UPSC ")
                                    .font(.custom("Bangers", size: 22))
                                Text("By using this website, you acknowledge your assent to the following conditions of use without limitation or qualification. Please read these conditions carefully before using this website. These terms and conditions may be revised at any time by updating this post. You are bound by any such revisions and should therefore periodically visit this page to review the then current terms and conditions to which you are bound")
                            }
                            VStack(alignment: .leading){
                                Text("DISCLAMERS ")
                                    .font(.custom("Bangers", size: 22))
                                Text("By using this website, you acknowledge your assent to the following conditions of use without limitation or qualification. Please read these conditions carefully before using this website. These terms and conditions may be revised at any time by updating this post. You are bound by any such revisions and should therefore periodically visit this page to review the then current terms and conditions to which you are bound")
                            }
                            VStack(alignment: .leading){
                                Text("LIMTATION OF LIABILITY ")
                                    .font(.custom("Bangers", size: 22))
                                Text("By using this website, you acknowledge your assent to the following conditions of use without limitation or qualification. Please read these conditions carefully before using this website. These terms and conditions may be revised at any time by updating this post. You are bound by any such revisions and should therefore periodically visit this page to review the then current terms and conditions to which you are bound")
                            }
                        }
                        .padding(.top, 40)
                        Spacer()
                    }
                    .padding()
                }
            }
        }
    }
}

#Preview {
    PrivacyPolicyView()
}
