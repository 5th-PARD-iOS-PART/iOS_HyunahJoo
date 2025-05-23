//
//  ProductRow.swift
//  5th_hw_JooHyunah
//
//  Created by 주현아 on 5/2/25.
//

import SwiftUI

struct ProductRow: View {
    let product: Product

    var body: some View {
        HStack(spacing: 16) {
            VStack(alignment: .leading){
                
                Image(product.imageName)
                    .resizable()
                    .aspectRatio(16/9, contentMode: .fill)
                    .frame(height: 180)
                    .clipped()
                    .cornerRadius(12)
                    .padding(.horizontal,5)
                
                VStack(alignment: .leading, spacing: 4) {
                    
                    Text(product.title)
                        .font(.subheadline)
                        .lineLimit(2)
                    
                    HStack(spacing: 8) {
                        Text("\(product.price)원")
                            .font(.title2)
                        
                        Text("\(product.lastPrice)원")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        
                        Text(product.rewardInfo)
                            .font(.caption)
                            .foregroundColor(.blue)
                            .padding(.horizontal, 8)
                            .padding(.vertical, 4)
                            .background(Color.blue.opacity(0.1))
                            .cornerRadius(8)
                    }//HStack

                    Text(product.viewerInfo)
                        .font(.caption2)
                        .foregroundColor(.gray)
                }//VStack
                .padding(.top, 4)
                .padding(.horizontal, 5)
                .padding(.bottom, 20)
                
            }//VStack
        }//HStack
        
    }
}

#Preview {
    ProductRow(product: Product(
            imageName: "item1",
            title: "[오늘 전국 최저가] 순수 저온압착 들기름",
            price: 4900,
            lastPrice: 6900,
            category: .food,
            isDeal: true,
            rewardInfo: "토스프라임 390원 적립",
            viewerInfo: "54.9만명이 구경함·무료배송",
            badgeText: "최저가보상+"
    ))
}
