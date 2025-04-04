

import SwiftUI

struct TransferView : View {
    
    let sectionColors: [Color] = [.red, .orange, .green, .gray, .purple]
    
    var body: some View {
        
        List {
            ForEach(0..<MockData2.modeling.count, id:\.self){ sectionIndex in
                
                Section{
                  //  Group{
//                        if sectionIndex == 0 {
//                            Text("치아는 뼈일까?")
//                            
//                        } else if sectionIndex == 1 {
//                            Text("토스뱅크")
//                            
//                        } else {
                            ForEach(MockData2.modeling[sectionIndex]) { item in
                                DemoRow2(data : item)
                                
                            //}
                        }
                  //  }
                }
                
            }
        } //list
        .listStyle(DefaultListStyle())
    }
}
#Preview {
    TransferView()
}
