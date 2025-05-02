//
//  In_ClothingTab.swift
//  5th_hw_JooHyunah
//
//  Created by 주현아 on 5/1/25.
//

import SwiftUI

struct In_ClothingTab: View {
    @Bindable var viewModel: ProductViewModel
    
    var body: some View{
    
        List{
            HStack {
                Text("의류")
                    .font(.title)
                    .bold()
                Spacer()
            }
            .padding(.bottom, 10)
            
            ForEach(viewModel.getFilteredProducts(for: .clothing)) { product in
                
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
    In_ClothingTab(viewModel: ProductViewModel())
}
