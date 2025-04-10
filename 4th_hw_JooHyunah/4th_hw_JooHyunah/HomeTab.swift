//
//  HomeTab.swift
//  4rd_hw_JooHyunah
//
//  Created by 주현아 on 4/9/25.
//

import SwiftUI

struct HomeTab : View {
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path : $path){
            List {
                Section{
                    Text("치아는 뼈일까?")
                }
                Section{
                    Text("토스뱅크")
                }
                ForEach(0..<MockData.modeling.count, id:\.self){ index in
                    Section{
                        ForEach(MockData.modeling[index]){ item in
                            DemoRow1(data : item, path: $path)
                        }
                    }
                }
            }.navigationDestination(for: String.self){ value in
                switch value {
                case "Transfer" : TransferView(path : $path)
                case "Send" : AccountSelectingView(path : $path)
                case "Amount": AmountSelectingView(path : $path)
                case "Confirm":  MoneyMovingView(path: $path)
                default : Text("잘못된 목적지")
                }
               
            }
        }
    
    }
}
#Preview {
    HomeTab()
}
