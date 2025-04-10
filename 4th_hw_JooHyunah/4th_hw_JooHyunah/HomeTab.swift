//
//  HomeTab.swift
//  4rd_hw_JooHyunah
//
//  Created by 주현아 on 4/9/25.
//

import SwiftUI

struct HomeTab : View {
    var body: some View {
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
                                DemoRow1(data : item)
                                
                            }
                        }
                    }
                }
                
            }
        } //list
        
    }
      
}
#Preview {
    HomeTab()
}
