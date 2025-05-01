//
//  AmountSelecitngView.swift
//  4rd_hw_JooHyunah
//
//  Created by 주현아 on 4/9/25.
//

import SwiftUI
import Observation

struct AmountSelectingView: View {
    @Binding var path: NavigationPath
    @Bindable var selectedAccount : AccountData
    @State private var amountText: String = ""
    
    let balance = 26656
    
    var body: some View{
        let inputAmount = Int(amountText) ?? 0
        let isOverLimit = inputAmount > balance
        let isValid = inputAmount > 0 && !isOverLimit

        VStack(spacing:30){
            Text("토스뱅크 송금")
                .foregroundColor(.gray)
                .bold()
            
            Spacer()
            
            VStack(alignment: .leading, spacing: 16) {
                VStack(alignment: .leading, spacing: 4) {
                    Text("내 토스뱅크 통장에서")
                        .font(.title2)
                        .bold()
                    Text("잔액 26,656원")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .bold()
                }
                Spacer().frame(height: 30)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("\(selectedAccount.name) 으로")
                        .font(.title2)
                        .bold()
                    Text(selectedAccount.account)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .bold()
                }
                
                AmountInputSection(amountText: $amountText, balance: balance)
                
                
                Button("다음") {
                    path.append(ConfirmInfo(account: selectedAccount, amount: amountText))
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(isValid ? Color.blue : Color.gray.opacity(0.3))
                .foregroundColor(.white)
                .cornerRadius(8)
                .disabled(!isValid)
                .opacity(inputAmount > 0 ? 1 : 0)
               
                
            }
            .padding(.horizontal)
            
            NumberPadView(amountText: $amountText)
               
        }//바깥 VStack
        
    }
}

#Preview {
    AmountSelectingView(path: .constant(NavigationPath()), selectedAccount: AccountData(bank: "", name: "", account: "", star: ""))
}
