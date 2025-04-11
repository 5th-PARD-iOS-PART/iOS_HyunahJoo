
//
//  DemoRow3.swift
//  4th_hw_JooHyunah
//
//  Created by 주현아 on 4/10/25.
//

import SwiftUI
import Observation

struct DemoRow3: View {
    @Binding var path: NavigationPath
    @Bindable var model : AccountData

    var body: some View{
        
        Button(action: {
            path.append(model)
        }){
            HStack {
                Image(model.bank)
                    .resizable()
                    .frame(width: 40, height:40)
                    .cornerRadius(10)
                
                VStack(alignment: .leading){
                    Text(model.name)
                    
                    Text(model.account)
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                    
                } .frame(maxWidth: .infinity, alignment: .leading)
                
                Image(model.star)
                    .resizable()
                    .frame(width: 20, height:20)
                    .cornerRadius(10)
            }//HStack
            .padding(.vertical, 5)
            .padding(.horizontal, 5)
            .background(Color.white)
            .cornerRadius(10)
            .foregroundColor(.black)
        }
    }
}

#Preview {
    DemoRow3(path: .constant(NavigationPath()),  model: AccountData(bank : "bank_1", name: "김토스", account: "우리은행 1002-123-456789", star:"nostar"))
}
