//
//  Product.swift
//  5th_hw_JooHyunah
//
//  Created by 주현아 on 5/1/25.
//

import Foundation

struct Product: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let price: Int
    let lastPrice: Int
    let category: Category
    let isDeal: Bool
    let rewardInfo: String
    let viewerInfo: String
    let badgeText: String?

    enum Category: String, CaseIterable {
        case all, deals, food, clothing, electronics, beauty
    }
}


