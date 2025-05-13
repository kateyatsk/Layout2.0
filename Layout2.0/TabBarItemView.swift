//
//  TabBarItemView.swift
//  Layout2.0
//
//  Created by Екатерина Яцкевич on 13.05.25.
//


import SwiftUI

struct TabBarItemView: View {
    @Binding var page: String
    var image: String
    
    var body: some View {
        Button {
            
            page = image
        } label: {
        HStack{
            if image == "plus" {
                Circle()
                    .frame(width: 32, height: 32)
                    .foregroundStyle(.white)
                    .overlay {
                        Image(systemName: "plus")
                            .foregroundStyle(.black)
                    }
            } else {
                Image(systemName: page == image ? "\(image).fill" : image)
                    .font(.system(size: 26))
                    .foregroundStyle(.white)
            }
            
        }
        
    }
}
}