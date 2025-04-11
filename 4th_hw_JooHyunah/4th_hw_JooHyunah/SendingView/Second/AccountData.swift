//
//  AccountData.swift
//  4th_hw_JooHyunah
//
//  Created by 주현아 on 4/10/25.
//

import SwiftUI
import Observation

@Observable
class AccountData: Identifiable, Hashable {
    static func == (lhs: AccountData, rhs: AccountData) -> Bool {
        lhs.id == rhs.id
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    let id = UUID()
    var bank : String
    var name: String
    var account: String
    var star : String

    init(bank: String, name: String, account: String, star:String) {
        self.bank = bank
        self.name = name
        self.account = account
        self.star = star
    }
}

@Observable
class AccountModel {
    var sections: [[AccountData]] = [
        [
            AccountData(bank:"bank_1", name: "WINGO통장", account: "하나은행157-891652-62107", star:"bluestar"),
            AccountData(bank:"bank_2", name: "종합매매", account: "삼성증권7112898902-01", star:"bluestar"),
        ],
        [
            AccountData(bank:"bank_3", name: "김정희", account: "KB국민96314175848", star: "nostar"),
            AccountData(bank:"bank_4", name: "내입출금통장", account: "카카오뱅크3333-20-8455642", star:"nostar"),
            AccountData(bank:"bank_5", name: "김래언", account: "IBK기업286-104115-01-019", star:"nostar"),
            AccountData(bank:"bank_3", name: "김정희", account: "KB국민96314175848", star:"nostar"),
            AccountData(bank:"bank_4", name: "내입출금통장", account: "카카오뱅크3333-20-8455642", star:"nostar"),
            AccountData(bank:"bank_5", name: "김래언", account: "IBK기업286-104115-01-019", star:"nostar")
        ]
    ]
}
