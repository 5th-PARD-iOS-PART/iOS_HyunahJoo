//
//  ContentView.swift
//  Additional Seminar
//
//  Created by 주현아 on 6/23/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView() {

            ProfileTab()
                .tabItem{
                    Image(systemName :"person.2.fill")
                    Text("친구찾기")
                }
                
            FriendSearchingTab()
                .tabItem{
                    Image(systemName:    "person.crop.circle.fill")
                    Text("MY")
                }
        }
    }
}

#Preview {
    ContentView()
}
