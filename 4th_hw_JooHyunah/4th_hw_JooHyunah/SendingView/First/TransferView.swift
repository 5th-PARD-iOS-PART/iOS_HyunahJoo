//
//  SendingTab.swift
//  4rd_hw_JooHyunah
//
//  Created by 주현아 on 4/9/25.
//
import SwiftUI    

struct TransferView : View {
    @Binding var path: NavigationPath
    
    let sectionColors: [Color] = [.red, .orange, .green, .gray, .purple]
    
    var body: some View {
        
        List {
            //Section {
                AccountSummaryView(path: $path)
                   .listRowInsets(EdgeInsets())
           //}
            
            ForEach(0..<MockData2.modeling.count, id:\.self){ sectionIndex in
                
                Section{
                    ForEach(MockData2.modeling[sectionIndex]) { item in
                        DemoRow2(data : item)
                    }
                }
                
            }
        } //list
        .listStyle(PlainListStyle())
   //     .background(Color(.systemGroupedBackground))
    }
}
#Preview {
    TransferView(path: .constant(NavigationPath()))
}
