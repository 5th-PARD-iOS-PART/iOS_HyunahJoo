//
//  In_AllTab.swift
//  5th_hw_JooHyunah
//
//  Created by 주현아 on 5/1/25.
//

import SwiftUI

struct In_AllTab: View {
    @Bindable var viewModel: ProductViewModel

    var body: some View {
        List{
            HStack {
                Text("오늘의 상품")
                    .font(.title)
                    .bold()
                Spacer()
            }
            .padding(.bottom, 20)
            .padding(.top, -15)
            .padding(.leading, -10)
            
            ForEach(viewModel.sortedProducts) { product in
                ProductRow(product: product)
                    .listRowInsets(EdgeInsets())
                    .listRowSeparator(.hidden)
            }
        }
        .scrollContentBackground(.hidden)
        .background(Color.white)
    }
}


#Preview {
    In_AllTab(viewModel: ProductViewModel())
}
