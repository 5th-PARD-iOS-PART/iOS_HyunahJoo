//
//  AccountSelectingView.swift
//  4rd_hw_JooHyunah
//
//  Created by 주현아 on 4/9/25.
//

import SwiftUI

struct AccountSelectingView: View {
    @Binding var path: NavigationPath
    
    var body: some View{
        Text("계좌 선택 뷰")
    }
}

#Preview {
    AccountSelectingView(path: .constant(NavigationPath()))
}
