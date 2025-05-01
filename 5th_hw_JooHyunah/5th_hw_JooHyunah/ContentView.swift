//
//  ContentView.swift
//  5th_hw_JooHyunah
//
//  Created by 주현아 on 5/1/25.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
            TabView() {
                HomeTab()
                    .tabItem{
                        Image(systemName : "house.fill")
                        Text("홈")
                    }
                    .tag(0)
                
                SecondTab()
                    .tabItem{
                        Image(systemName : "diamond.fill")
                        Text("혜택")
                    }
                    .tag(1)
                
                ThirdTab()
                    .tabItem{
                        Image(systemName : "bag.fill")
                        Text("토스쇼핑")
                    }
                    .tag(2)
                
                FourthTab()
                    .tabItem{
                        Image(systemName : "chart.line.uptrend.xyaxis")
                        Text("증권")
                    }
                    .tag(3)
                
                FifthTab()
                    .tabItem{
                        Image(systemName : "line.3.horizontal")
                        Text("전체")
                    }
                    .tag(4)
            } // TabView
    }
}

#Preview {
    ContentView()
}
