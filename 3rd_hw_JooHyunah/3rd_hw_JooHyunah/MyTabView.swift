//
//  ContentView.swift
//  2_week_ex
//
//  Created by 주현아 on 3/26/25.
//

import SwiftUI

struct MyTabView : View {
    init(){
        UITabBar.appearance().scrollEdgeAppearance = .init()
    }
    var body: some View {
        TabView{
            
            FirstView()
                .tabItem{
                    Image("symbol1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 22, height: 22)
                }
                .tag(0)
            
            
            SecondView()
                .tabItem{
                    Image("symbol2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 22, height: 22)
                }
                .tag(1)
            
            ThirdView()
                .tabItem{
                    Image("symbol3")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 22, height: 22)
                }
                .tag(2)
            
            FourthView()
                .tabItem{
                    Image("symbol4")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 22, height: 22)
                }
                .tag(3)
            
            FifthView()
                .tabItem{
                    Image("symbol5")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 22, height: 22)
                }
                .tag(4)
        }
   //     .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    MyTabView()
}
