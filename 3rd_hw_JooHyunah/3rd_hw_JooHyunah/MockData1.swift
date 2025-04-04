import SwiftUI

struct MockData: Identifiable {
    let id = UUID()
    var title : String
    var name : String
    var bankName : String
}

extension MockData{
    static let modeling: [[MockData]] = [
        [
            
        ],
        [
            
        ],
        [
            MockData(title: "339,690원", name: "bank1", bankName: "WINGO통장"),
            MockData(title: "38,841원", name: "bank2", bankName: "토스뱅크통장"),
            MockData(title: "114원", name: "bank3", bankName: "토스뱅크에 쌓인 이자"),
            MockData(title: "650원", name: "bank4", bankName: "MY 입출금 통장"),
            MockData(title: "2,090원", name: "bank5", bankName: "KB나라사랑우대통장"),
            MockData(title: "29원", name: "bank6", bankName: "보통예금([BK나라사랑통장)"),
            MockData(title: "118원", name: "bank7", bankName: "토스뱅크외화통장"),
            MockData(title: "0원", name: "bank8", bankName: "입출금통장"),
            MockData(title: "1,051원", name: "bank9", bankName: "보통예금(BK주거래생활금융통장"),
            MockData(title: "15,257,990원", name: "bank10", bankName: "투자 모아보기")
        ],
        [
            MockData(title: "823,643원", name: "bank11", bankName: "3월에 쓴 돈")
        ],
        [
            MockData(title: "내 신용점수", name: "bank12", bankName: "내 신용점수")
        ]
    ]
}
