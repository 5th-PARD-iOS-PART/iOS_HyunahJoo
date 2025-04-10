//
//  AmountSelecitngView.swift
//  4rd_hw_JooHyunah
//
//  Created by 주현아 on 4/9/25.
//

import SwiftUI

struct AmountSelectingView: View {
    @Binding var path: NavigationPath
    
    var body: some View{
        Text("금액 선택 뷰")
    }
}

#Preview {
    AmountSelectingView(path: .constant(NavigationPath()))
}
