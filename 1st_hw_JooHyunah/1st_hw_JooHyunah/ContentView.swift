//
//  ContentView.swift
//  1st_hw_JooHyunah
//
//  Created by 주현아 on 3/21/25.
//

import SwiftUI

struct ButtonView: View {
    @Binding var shouldShowAlert: Bool

    var body: some View {
        Button("더 알아보기") {
            print("확인 버튼 클릭됨")
            shouldShowAlert = true
        }
        .font(.system(size: 20))
        .fontWeight(.bold)
        .foregroundColor(.white)
        .padding()
        .background(Color.teal)
        .cornerRadius(10)
    }
}

struct ContentView: View {
    @State private var shouldShowAlert: Bool = false
    var body: some View {
        ZStack{
            
            VStack {
                
                Image("Black")
                    .resizable()
                    .scaledToFill()
                    .frame(width:450, height: 50)
                Spacer()
                
                Image("Profile")
                    .resizable()
                    .scaledToFill()
                    .frame(width:300, height: 300)
                    .clipShape(Circle())
                    
                Text("\n🌱 주현아")
                    .font(.title)
                    .fontWeight(.bold)
                    .lineSpacing(5)
                
                
                Text("ISTP | iOS앱 개발자 | 컴퓨터공학 심화전공")
                    .font(.system(size: 15))
                Spacer()
                
                ButtonView(shouldShowAlert: $shouldShowAlert)
                
            
                Spacer()
                
            }
            
            .padding()
        }
        .alert("More about me", isPresented: $shouldShowAlert) {
                    Button("확인", role: .cancel) { }
                } message: {
                    Text("23학번 24살입니다 :D\n잘부탁드립니다!\n")
                }
    }
}

#Preview {
    ContentView()
}
