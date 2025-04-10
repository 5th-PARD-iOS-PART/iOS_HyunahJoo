//
//  DemoRow1.swift
//  4th_hw_JooHyunah
//
//  Created by 주현아 on 4/9/25.
//

import SwiftUI

struct DemoRow1: View {
    var data: MockData
    @Binding var path: NavigationPath

    var body: some View {
        HStack {
            Image(data.name)
                .resizable()
                .frame(width: 40, height:40)
                .cornerRadius(10)
            
            VStack(alignment: .leading){
                Text(data.title)
                    .font(.headline)
                   
                Text(data.bankName)
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                
            }
            .layoutPriority(1)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            
            Button("송금"){
                path.append("Transfer")
            }
            .font(.subheadline)
            .padding(.horizontal, 10)
            .padding(.vertical, 6)
            //.background(Color(.systemGray6))
            .cornerRadius(10)
        }
        
        .padding(.vertical, 5)
       // .padding(.horizontal, 5)
        .background(Color.white)
        .cornerRadius(10)
        .foregroundColor(.black)
    }
}

#Preview {
    DemoRow1(data:MockData(title: "gg", name: "symbol1", bankName: "경상북도 포항시 소재에 있는 하나은행"),path: .constant(NavigationPath()))
}
