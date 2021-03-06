//
//  Villager.swift
//  ACHNBrowserUI
//
//  Created by Thomas Ricouard on 17/04/2020.
//  Copyright © 2020 Thomas Ricouard. All rights reserved.
//

import Foundation

struct Villager: Identifiable, Codable, Equatable {
    let id: Int
    let name: [String: String]
    let personality: String
    let birthday: String?
    var formattedBirthday: String? {
        guard let birthday = birthday else { return nil }
        let formatter = DateFormatter()
        formatter.dateFormat = "d/M"
        let day = formatter.date(from: birthday)!
        formatter.dateFormat = "dd MMMM"
        return formatter.string(from: day)
    }
    
    let gender: String
    let species: String
}
