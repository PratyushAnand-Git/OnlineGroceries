//
//  HeartButton.swift
//  OnlineGroceries
//
//  Created by student on 19/02/25.
//

import SwiftUI

struct HeartButton: View {
    @State private var isLiked: Bool = false
    var body: some View {
        Button(action: {
            isLiked.toggle()
        }) {
            Image(systemName: isLiked ? "heart.fill" : "heart")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(isLiked ? .red : .gray)
                .frame(width: 25, height: 25)
        }
    }
}

struct HeartButton_Previews: PreviewProvider {
    static var previews: some View{
        HeartButton()
    }
}
