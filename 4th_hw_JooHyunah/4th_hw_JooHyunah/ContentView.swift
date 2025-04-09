//
//  ContentView.swift
//  4th_hw_JooHyunah
//
//  Created by 주현아 on 4/9/25.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView{
            TabView {
                HomeTab()
                
                SecondTab()
                
                ThirdTab()
                
                FourthTab()
                
                FifthTab()
            } // TabView
        } // NavigationView
    }
}

#Preview {
    ContentView()
}
