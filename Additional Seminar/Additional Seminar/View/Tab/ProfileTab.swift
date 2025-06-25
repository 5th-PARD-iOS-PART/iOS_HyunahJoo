//
//  ProfileTab.swift
//  Additional Seminar
//
//  Created by 주현아 on 6/25/25.
//

import SwiftUI

struct ProfileTab: View {
    var body: some View {
        VStack(alignment: .leading){
            // MARK: - 상단 프로필 박스
            VStack{
                HStack{
                    VStack(alignment: .leading) {
                        VStack(alignment: .leading){
                            Text("MY")
                                .padding(.bottom, 10)
                            Text("맛있으면울어")
                        } //VStack
                        .font(.title)
                        .bold()
                        
                        HStack{
                            Text("#맵찔이")
                            Text("#향신료 NO")
                            Text("#오이 NO")
                        } //HStack
                        .foregroundColor(.orange)
                        .bold()
                        .underline(true, color: .orange)
                        
                        Text("고유입맛 수정하기>")
                            .foregroundColor(.gray)
                            .underline(true, color: .gray)
                            .padding(.top, 4)
                        
                    }//VStack
                    Image("Character")
                        .resizable()
                        .frame(width: 100, height: 100)
                }//HStack
            }//VStack
            .cardBoxStyle()
            Spacer()
            
            VStack(alignment: .leading){
                HStack{
                    Text("요즘 나의 상태는")
                    
                    KeywordTag(text: "다이어트")
                }                .padding(.vertical, 10)

                
            }//VStack
            .cardBoxStyle()
            
            Spacer()
            
            VStack(alignment: .leading, spacing: 20){
                HStack{
                    Text("어제 먹은 음식")
                    KeywordTag(text: "오코노미야끼")
                }
                
                Divider()
                    .frame(height: 1)
                    .background(Color.gray.opacity(0.2))
                    .padding(.vertical, 4) // 텍스트와 태그 사이 간격
                
                
                    Text("오늘의 입맛 키워드")
                VStack(alignment: .trailing, spacing: 8){
                        HStack{
                            Spacer()
                            KeywordTag(text: "🥩육류")
                            KeywordTag(text: "🍞빵")
                            KeywordTag(text: "🇰🇷한식")
                        }
                        
                        HStack{
                            Spacer()
                            KeywordTag(text: "🍽️NO국물"
                            )
                            KeywordTag(text: "🥘헤비")
                        }
                    }
            }//VStack
            .cardBoxStyle()
            
            Spacer()
            
            VStack(alignment: .leading, spacing: 20){
                    Text("도움말")

                    HStack{
                        Image("InnerIcon1")
                            .resizable()
                            .frame(width: 15, height: 15)
                        Text("고객센터")
                    }
                    
                    HStack{
                        Image("InnerIcon2")
                            .resizable()
                            .frame(width: 15, height: 15)
                        Text("서비스 이용 약관")
                    }
                    HStack{
                        Image("InnerIcon3")
                            .resizable()
                            .frame(width: 15, height: 15)
                        Text("로그아웃")
                    }
            }//VStack
            .cardBoxStyle()
            Spacer()
        } //VStack
    } //body
}


//키워드 관련 구조체
struct KeywordTag: View {
    let text: String

    var body: some View {
        Text(text)
            .font(.subheadline)
            .foregroundColor(.orange)
            .padding(.horizontal, 12)
            .padding(.vertical, 6)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color.orange, lineWidth: 2.5)
            )
            .background(Color.white)
            .cornerRadius(16)
            .bold()
    }
}

struct CardBoxModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(16)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.white)
            .cornerRadius(16)
            .shadow(color: Color.black.opacity(0.15), radius: 6, x: 0, y: 3)
            .padding(.horizontal)
    }
}

extension View {
    func cardBoxStyle() -> some View {
        self.modifier(CardBoxModifier())
    }
}


#Preview {
    ProfileTab()
}
