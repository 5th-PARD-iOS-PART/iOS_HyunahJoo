//
//  MoneyMovingView.swift
//  4rd_hw_JooHyunah
//
//  Created by 주현아 on 4/9/25.
//

import SwiftUI

struct MoneyMovingView: View {
    @Binding var path: NavigationPath
    @Bindable var selectedAccount : AccountData
    @Binding var amountText: String
    
    var body: some View{
        
        VStack(spacing: 30){
            
            Text("토스뱅크 송금")
                .foregroundColor(.gray)
                .bold()
            
            Spacer()
            
            VStack(spacing: 10){
                HStack(){
                    Text("\(selectedAccount.name)")
                        .foregroundColor(.blue)
                    Text("으로")
                }
                Text("\(amountText)원을")
                Text("옮길까요?")
            }
            .font(.title)
            .bold()
            .multilineTextAlignment(.center)
            
            Spacer()
            
            VStack(alignment: .leading, spacing: 15){
                HStack(){
                    Text("받는 분에게 표시")
                    Spacer()
                    Text("유재혁")
                }
                
                HStack(){
                    Text("출금 계좌")
                    Spacer()
                    Text("내 토스뱅크 통장")
                }
                
                HStack(){
                    Text("입금 계좌")
                    Spacer()
                    Text("\(selectedAccount.account)")
                }
            }
            .font(.subheadline)
            .foregroundColor(.gray)
            .bold()
            .padding(.horizontal)
            
            Button(action: {
                path.removeLast(path.count)
           }) {
               Text("옮기기")
                   .frame(maxWidth: .infinity)
                   .padding()
                   .background(Color.blue)
                   .foregroundColor(.white)
                   .cornerRadius(12)
           }
           .padding(.horizontal)
            
            Text("평생수수료 무료")
                .font(.subheadline)
                .foregroundColor(.gray)
                .bold()
            
        }
    }
}

#Preview {
    MoneyMovingView(path: .constant(NavigationPath()), selectedAccount: AccountData(bank: "", name: "", account: "", star: ""), amountText: .constant("266656"))
}
