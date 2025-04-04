//
//  ContentView_ver2.swift
//  2_week_ex
//
//  Created by 주현아 on 3/26/25.
//

import SwiftUI

struct FirstView : View {
    
    let sectionColors: [Color] = [.red, .orange, .green, .gray, .purple]
    
    var body: some View {
        
        NavigationView{
            List {
                ForEach(0..<MockData.modeling.count, id:\.self){ sectionIndex in
                    
                    Section{
                        Group{
                            if sectionIndex == 0 {
                                Text("치아는 뼈일까?")
                                
                            } else if sectionIndex == 1 {
                                Text("토스뱅크")
                                
                            } else {
                                ForEach(MockData.modeling[sectionIndex]) { item in
                                    DemoRow(data : item)
                                    
                                }
                            }
                        }
                    }
                    
                }
            } //list
            .listStyle(DefaultListStyle())
        } // navigationView
    }
}
#Preview {
   FirstView()
}
