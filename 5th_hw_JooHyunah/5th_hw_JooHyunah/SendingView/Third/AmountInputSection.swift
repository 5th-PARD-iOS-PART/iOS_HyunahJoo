//
//  AmountInputSection.swift
//  4th_hw_JooHyunah
//
//  Created by 주현아 on 4/11/25.
//

import SwiftUI

struct AmountInputSection: View {
    @Binding var amountText: String
    let balance: Int

    var body: some View {
        let inputAmount = Int(amountText) ?? 0
        let isOverLimit = inputAmount > balance

        VStack(alignment: .leading, spacing: 4) {
            Spacer()
            if inputAmount == 0 {
                Text("얼마나 옮길까요?")
                    .font(.title2)
                    .bold()
                    .foregroundColor(.gray)

                Button(action: {
                    amountText = "\(balance)"
                }) {
                    Text("잔액 \(balance.formatted())원 입력")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .padding(6)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(6)
                }
                .buttonStyle(PlainButtonStyle())

            } else {
                Text("\(inputAmount.formatted())원")
                    .font(.largeTitle)
                    .bold()

                if isOverLimit {
                    Text("잔액이 \(inputAmount - balance)원 부족해요.")
                        .foregroundColor(.red)
                        .font(.caption)
                } else {
                    Text("잔액 \(balance.formatted())원")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
        }
    }
}
