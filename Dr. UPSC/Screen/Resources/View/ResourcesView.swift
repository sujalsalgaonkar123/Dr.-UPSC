//
//  ResourcesView.swift
//  Dr. UPSC
//
//  Created by Morning Star on 21/09/24.
//

import SwiftUI

struct ResourcesView: View {
    @State var index = 0
    var body: some View {
        NavigationStack{
            VStack{
                //HEADER
                HStack{
                    Text("FREE RESOURCES")
                        .font(.custom("Bangers", size: 28))
                        .foregroundStyle(Color(.black))
                    Spacer()
                }
                
                //BODY
                ZStack{
                    VStack{
                        //TOOGLE BTN
                        HStack(spacing: 20){
                            Button(action: {
                                self.index = 0
                                
                            }){
                                Text("PRELIMS")
                                    .padding()
                                    .frame(width: 175, height: 50)
                                    .background(self.index == 0 ? Color("Yellow") : .white)
                                    .cornerRadius(5)
                                    .shadow(color: .black, radius: 1, x:5, y: 5)
                                    .overlay(){
                                        RoundedRectangle(cornerRadius: 5)
                                            .stroke(style: StrokeStyle())
                                    }
                                
                                
                            }
                            Button(action: {
                                self.index = 1
                                
                            }){
                                Text("MAINS")
                                    .padding()
                                    .frame(width: 175, height: 50)
                                    .background(self.index == 1 ? Color("Yellow") : .white)
                                    .cornerRadius(5)
                                    .shadow(color: .black, radius: 1, x:5, y: 5)
                                    .overlay(){
                                        RoundedRectangle(cornerRadius: 5)
                                            .stroke(style: StrokeStyle())
                                    }
                                
                            }
                        }
                        .font(.custom("bangers", size: 26))
                        .foregroundColor(.black)
                        
                        //COURSES LIST
                        if self.index == 0 {
                            ScrollView(.vertical, showsIndicators: false){
                                VStack{
                                    ForEach(0...10, id: \.self){ i in
                                    PrelimsView()
                                    }
                                }
                                .frame(width: 380)
                            }
                            
                        }
                        else{
                            ScrollView(.vertical, showsIndicators: false){
                                VStack{
                                    ForEach(0...10, id: \.self){ i in
                                        MainsView()
                                    }
                                }
                                .frame(width: 380)
                            }
                        }
                        
                    }
                }
                
                }
            .padding()
                Spacer()
            }
        }
    }

#Preview {
    ResourcesView()
}

struct PrelimsView: View {
    var body: some View {
        ZStack{
            VStack(spacing: -10){
                //Image Thumbnail
                Image("Image1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350, height: 230)
                //Courses Details
                HStack{
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 6, height: 50)
                        .foregroundColor(Color("Yellow"))
                    Text("Science and Tech. Hello Dummy DATA ")
                        .frame(width: 190)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.black)
                    Spacer()
                    NavigationLink {
                        HomeView()
                    } label: {
                        Image(systemName: "arrow.up.forward")
                            .font(.title)
                            .frame(width: 70, height: 40)
                            .background(Color("Yellow"))
                            .foregroundColor(.black.opacity(0.6))
                            .cornerRadius(50)
                            .overlay(){
                                RoundedRectangle(cornerRadius: 50)
                                    .stroke(style: StrokeStyle())
                                    .stroke(lineWidth: 1)
                                    .foregroundColor(.gray)
                            }
                    }

                }
                .padding()
                .frame(width: 350, height: 80)
                .background(Color("Primary"))
                
            }
            .cornerRadius(20)
            .padding(.vertical, 5)
            .padding(.horizontal, 5)

            .shadow(color: .black.opacity(0.3), radius: 10, x:10, y:10)
        }
    }
}

struct MainsView: View {
    var body: some View {
        ZStack{
            VStack(spacing: -10){
                //Image Thumbnail
                Image("Image2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350, height: 230)
                //Courses Details
                HStack{
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 6, height: 50)
                        .foregroundColor(Color("Yellow"))
                    Text("Science and Tech. Hello Dummy DATA ")
                        .frame(width: 190)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.black)
                    Spacer()
                    NavigationLink {
                        HomeView()
                    } label: {
                        Image(systemName: "arrow.up.forward")
                            .font(.title)
                            .frame(width: 70, height: 40)
                            .background(Color("Yellow"))
                            .foregroundColor(.black.opacity(0.6))
                            .cornerRadius(50)
                            .overlay(){
                                RoundedRectangle(cornerRadius: 50)
                                    .stroke(style: StrokeStyle())
                                    .stroke(lineWidth: 1)
                                    .foregroundColor(.gray)
                            }
                    }

                }
                .padding()
                .frame(width: 350, height: 80)
                .background(Color("Primary"))
                
            }
            .cornerRadius(20)
            .padding(.vertical, 5)
            .padding(.horizontal, 5)

            .shadow(color: .black.opacity(0.3), radius: 10, x:10, y:10)
        }
    }
}
