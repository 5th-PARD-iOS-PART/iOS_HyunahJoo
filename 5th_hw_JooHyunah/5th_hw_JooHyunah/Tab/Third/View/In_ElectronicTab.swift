//
//  In_ElectronicTab.swift
//  5th_hw_JooHyunah
//
//  Created by 주현아 on 5/1/25.
//

import SwiftUI

struct In_ElectronicTab: View {
    @Bindable var viewModel: ProductViewModel
    
    var body: some View{
        List(viewModel.getFilteredProducts(for: .electronics)) { product in
            ProductRow(product: product)
                .listRowInsets(EdgeInsets())
                .listRowSeparator(.hidden)
        }
        .scrollContentBackground(.hidden)
        .background(Color.white) 
    }
}

#Preview {
    In_ElectronicTab(viewModel: ProductViewModel())
}
