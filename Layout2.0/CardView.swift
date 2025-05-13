//
//  CardView.swift
//  Layout2.0
//
//  Created by Екатерина Яцкевич on 11.05.25.
//


import SwiftUI

struct CardView: View {
    var card: Card
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(.girls)
                    .resizable()
                    .frame(width: 38, height: 38)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                VStack(alignment: .leading) {
                    Text(card.imageName)
                        .foregroundColor(card.cardType == .blue ? .black : .white)
                    HStack {
                        Image(systemName: "calendar.badge.clock")
                        Text(card.date)
                            .font(.system(size: 12))
                    }  .foregroundColor(card.cardType == .blue ? .appGray : .white)
                }
            }
            Text(card.text)
                .font(.system(size: 12))
                .frame(width: 150, alignment: .leading)
                .foregroundColor(card.cardType == .blue ? .appGray : .white)
            
            Button {
                //
            } label: {
                Text("comment")
                    .padding(.horizontal, 49)
                    .foregroundColor(.white)
                    .frame(height: 25)
                    .background(.appBlack)
                    .font(.system(size: 12))
                    .clipShape(RoundedRectangle(cornerRadius: 30))
            }
            .padding(.top, 19)
            .padding(.bottom, 10)
         
            
            
        }
        .padding(10)
        .frame(maxWidth: .infinity)
        .background(card.cardType == .blue ? .appBlue : .appGreen)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    CardView(card: Card(imageName: "userPhoto", userName: "User Name", date: "30 may", text: "Hashable", cardType: .green) )
}
