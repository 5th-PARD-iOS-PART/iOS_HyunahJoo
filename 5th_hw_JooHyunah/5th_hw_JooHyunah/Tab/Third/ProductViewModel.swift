//
//  ProductViewModel.swift
//  5th_hw_JooHyunah
//
//  Created by 주현아 on 5/1/25.
//

import Foundation
import Observation

@Observable
final class ProductViewModel{
    //- allProducts: 전체 상품 데이터
    var allProducts : [Product] = mockProducts
    
    //- sortedProducts: 가격 낮은 순 정렬
    var sortedProducts : [Product]{
        allProducts.sorted(by: {$0.price < $1.price})
    }
    
    //- getDeals(): 특가 상품만
    func getDeals() -> [Product] {
          sortedProducts.filter { $0.isDeal }
    }

    //- getFilteredProducts(for:): 특정 카테고리만
    func getFilteredProducts(for category: Product.Category) -> [Product] {
          sortedProducts.filter { $0.category == category }
    }
}



