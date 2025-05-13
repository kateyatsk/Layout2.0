//
//  HomeView.swift
//  Layout2.0
//
//  Created by Екатерина Яцкевич on 11.05.25.
//

import SwiftUI

enum CardType {
    case blue
    case green
}

struct HomeView: View {
    var cards: [Card] = Card.mockData()
    var body: some View{
        VStack {
            HStack {
                Image("computer")
                    .resizable()
                    .frame(width: 48, height: 48)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                Text("User Name")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.white)
                Spacer()
                Image(.menu)
                    .resizable()
                    .frame(width: 20, height: 20)
                    .padding()
            }
            
            HStack {
                ForEach(cards, id: \.self) { card in
                    CardView(card: card)
                }
            }
            .padding(.top, 54)
            
            VStack {
                HStack {
                    Image(.userPhoto)
                        .resizable()
                        .frame(width: 20, height: 20)
                        .clipShape(Circle())
                    Spacer()
                    
                    Image(systemName: "ellipsis.message.fill")
                    Text("4")
                    Image(systemName: "paperclip")
                    Text("16")
                }
                .foregroundColor(.appGray)
                Image(.mountain)
                    .resizable()
                    .frame(maxHeight: 139)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                
                HStack {
                    Image(systemName: "heart")
                    Image(systemName: "square.and.arrow.up")
                    Spacer()
                    Image(systemName: "trash")
                }
                .foregroundColor(.appGray)
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(.appBlue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(.top, 25)
            
            Spacer()
        }
        .padding()
        .background(.appBlack)
    }
}

#Preview {
    HomeView()
}
