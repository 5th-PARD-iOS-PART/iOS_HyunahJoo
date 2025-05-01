//
//  NumberPadView.swift
//  4th_hw_JooHyunah
//
//  Created by 주현아 on 4/10/25.
//

import SwiftUI

struct NumberPadView: View {
    @Binding var amountText: String

    let buttons = [
        ["1", "2", "3"],
        ["4", "5", "6"],
        ["7", "8", "9"],
        ["00", "0", "←"]
    ]

    var body: some View {
        VStack(spacing: 20) {
            ForEach(buttons, id: \.self) { row in
                HStack(spacing: 50) {
                    ForEach(row, id: \.self) { label in
                        Button(action: {
                            handleTap(label)
                        }) {
                            Text(label)
                                .frame(width: 80, height: 60)
                                .font(.title)
                                .foregroundColor(.black)
                        }
                    }
                }
            }
        }
        
    }

    func handleTap(_ label: String) {
        switch label {
        case "←":
            if !amountText.isEmpty {
                amountText.removeLast()
            }
        default:
            amountText.append(label)
        }
    }
}

