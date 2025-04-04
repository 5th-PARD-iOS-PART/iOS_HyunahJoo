import SwiftUI

struct MockData2: Identifiable {
    let id = UUID()
    var title : String
    var name : String
    var time : String
    var amount : String
    var total : String
}

extension MockData2{
    static let modeling: [[MockData2]] = [
        [
            MockData2(title: "카카오 택시_0", name: "store1", time: "11:13", amount: "-6,200원", total: "38,841원"),
            MockData2(title: "카카오 택시 선승인", name: "store1", time: "11:00", amount: "+6,900원", total: "45,041원"),
            MockData2(title: "카카오 택시 선승인", name: "store1", time: "11:00", amount: "-6,900원", total: "45,041원"),
        ],
    
        [
            MockData2(title: "플렉스 PC방", name: "store2", time: "22:44", amount: "-5,500원", total: "45,041원"),
            MockData2(title: "플렉스 PC방", name: "store2", time: "21:35", amount: "-5,000원", total: "50,541원"),
            MockData2(title: "씨유한동대오석관점", name: "store3", time: "16:17", amount: "-2,000원", total: "55,541원"),
            MockData2(title: "씨유한동대오석관점", name: "store3", time: "15:59", amount: "-4,400원", total: "57,541원"),
            MockData2(title: "카카오 택시_0", name: "store1", time: "10:00", amount: "-7,000원", total: "61,941원"),
            MockData2(title: "카카오 택시 선승인", name: "store1", time: "09:47", amount: "+7,300원", total: "68,941원"),
            MockData2(title: "카카오 택시 선승인", name: "store1", time: "09:47", amount: "-7,300원", total: "61,641원"),
            MockData2(title: "카카오 택시 선승인", name: "store1", time: "09:46", amount: "+7,300원", total: "68,941원")
        ]
    ]
}
