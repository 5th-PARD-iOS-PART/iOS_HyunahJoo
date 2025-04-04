//
//  ContentView.swift
//  2_week_ex
//
//  Created by 주현아 on 3/26/25.
//

import SwiftUI

struct MyTabView : View {
    @State private var selectedTab = 0
    
    init(){
        let appearance = UITabBarAppearance()
                appearance.configureWithOpaqueBackground()
                appearance.backgroundColor = UIColor.white
                
                appearance.stackedLayoutAppearance.selected.iconColor = UIColor.black
                appearance.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.black]
                
                appearance.stackedLayoutAppearance.normal.iconColor = UIColor.gray
                appearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.gray]
                
                UITabBar.appearance().standardAppearance = appearance
                UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    var body: some View {
        TabView{
            
            FirstView()
                .tabItem{
                    Image("symbol1")
                        .resizable()
                        .frame(width: 22, height: 22)
                    Text("홈")
                        .foregroundColor(selectedTab == 0 ? .black : .gray)
                }
                .tag(0)
            
            
            SecondView()
                .tabItem{
                    Image("ri_vip-diamond-fill")
                        .resizable()
                        .frame(width: 22, height: 22)
                    Text("혜택")
                        .foregroundColor(selectedTab == 0 ? .black : .gray)
                }
                .tag(1)
            
            ThirdView()
                .tabItem{
                    Image("Group 56")
                        .resizable()
                        .frame(width: 22, height: 22)
                    Text("토스쇼핑")
                        .foregroundColor(selectedTab == 0 ? .black : .gray)
                }
                .tag(2)
            
            FourthView()
                .tabItem{
                    Image("symbol4")
                        .frame(width: 22, height: 22)
                    Text("증권")
                        .foregroundColor(selectedTab == 0 ? .black : .gray)
                }
                .tag(3)
            
            FifthView()
                .tabItem{
                    Image("symbol5")
                        .frame(width: 22, height: 22)
                    Text("전체")
                        .foregroundColor(selectedTab == 0 ? .black : .gray)
                }
                .tag(4)
        }
   //     .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    MyTabView()
}
