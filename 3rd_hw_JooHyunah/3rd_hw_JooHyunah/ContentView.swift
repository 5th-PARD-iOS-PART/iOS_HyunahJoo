//
//  ContentView.swift
//  3rd_hw_JooHyunah
//
//  Created by 주현아 on 3/29/25.


import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            NavigationLink(destination: MyTabView()) {
                Text("다음화면으로 이동")
            }
        }

    }
}

#Preview {
    ContentView()
}
