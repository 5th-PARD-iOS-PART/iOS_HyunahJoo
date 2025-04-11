//
//  AccountSelectingView.swift
//  4rd_hw_JooHyunah
//
//  Created by 주현아 on 4/9/25.
//

import SwiftUI
import Observation

struct AccountSelectingView: View {
    @Binding var path: NavigationPath
    @Bindable var model : AccountModel
    
    var body: some View{
        List {
            Section(header: Text("내 계좌")) {
                ForEach(model.sections[0]) { item in
                    DemoRow3(path: $path, model: item)
                }
            }
            
            Section(header: Text("최근 보낸 계좌")) {
                ForEach(model.sections[1]) { item in
                    DemoRow3(path: $path, model: item)
                }
            }
        } //list
        .listStyle(PlainListStyle())
        
        
    }
}


#Preview {
    AccountSelectingView(path: .constant(NavigationPath()),  model: AccountModel())
}
