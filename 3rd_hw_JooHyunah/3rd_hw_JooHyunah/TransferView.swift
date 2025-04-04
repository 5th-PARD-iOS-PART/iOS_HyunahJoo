

import SwiftUI

struct TransferView : View {
    
    let sectionColors: [Color] = [.red, .orange, .green, .gray, .purple]
    
    var body: some View {
        
        List {
            Section {
               AccountSummaryView()
                   .listRowInsets(EdgeInsets())
           }
            
            ForEach(0..<MockData2.modeling.count, id:\.self){ sectionIndex in
                
                Section{
                    ForEach(MockData2.modeling[sectionIndex]) { item in
                        DemoRow2(data : item)
                    }
                }
                
            }
        } //list
        .listStyle(PlainListStyle())
        .background(Color(.systemGroupedBackground))
    }
}
#Preview {
    TransferView()
}
