//
//  MoneyMovingView.swift
//  4rd_hw_JooHyunah
//
//  Created by 주현아 on 4/9/25.
//

import SwiftUI

struct MoneyMovingView: View {
    @Binding var path: NavigationPath
    
    var body: some View{
        Text("금액 실제 송금하는 뷰")
    }
}

#Preview {
    MoneyMovingView(path: .constant(NavigationPath()))
}
