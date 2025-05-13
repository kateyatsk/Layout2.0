//
//  Card.swift
//  Layout2.0
//
//  Created by Екатерина Яцкевич on 13.05.25.
//


import SwiftUI

struct Card: Hashable {
    let imageName: String
    let userName: String
    let date: String
    let text: String
    let cardType: CardType
    
    static func mockData() -> [Card] {
        [
            Card(imageName: "userPhoto", userName: "User Name", date: "30 may", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod", cardType: .blue),
            Card(imageName: "userPhoto", userName: "User Name", date: "30 may", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod", cardType: .green)
        ]
    }
}