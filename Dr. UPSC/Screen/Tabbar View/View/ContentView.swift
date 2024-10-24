//
//  ContentView.swift
//  Dr. UPSC
//
//  Created by Morning Star on 20/09/24.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTab = 0
    var body: some View {
        ZStack(alignment: .bottom){
            TabView(selection: $selectedTab){
                HomeView()
                    .tag(0)
                ResourcesView()
                    .tag(1)
                PoketCAView()
                    .tag(2)
                CoursesView()
                    .tag(3)
                HotsView()
                    .tag(4)
            }
            ZStack(alignment: .top){
                HStack(alignment: .top, spacing: 20){
                    ForEach((TabItem.allCases), id: \.self){ item in
                        Button{
                            selectedTab = item.rawValue
                        } label: {
                            CustomTabItem(imageName: item.iconName, Title: item.title,
                                          isActive: (selectedTab == item.rawValue), iconFill: item.iconFill)
                        }
                        .frame(width: 50, height: 50)
                    }
                }
                .frame(width: 360, height: 68)
                .background(Color("Yellow"))
                .cornerRadius(10)
                .shadow(color: .black, radius: 1, x:5, y: 5)
            }
        }
    }
}

#Preview {
    ContentView()
}

extension ContentView{
    func CustomTabItem(imageName: String, Title: String, isActive: Bool, iconFill: String) -> some View{
        VStack(spacing: 6){
            Spacer()

            if isActive {
                VStack{
                    Image(iconFill)
                    Image("Line")
                        
                }
                .padding(.bottom, 30)
            } else {
                Image(imageName)
                Text(Title)
                    .font(.custom("MoreSugarThin", size: 13))
                    .foregroundStyle(Color.black)
                
            }
        }
    }
}
