//
//  StarRatingView.swift
//  OnlineGroceries
//
//  Created by student on 18/02/25.
//

import SwiftUI

struct StarRatingView: View {
    @State var rating: Int = 0
    
    var body: some View {
        HStack{
            ForEach(0..<5) { index in
                StarView(isFilled: .constant(index < rating))
                    .onTapGesture {
                        rating = index + 1
                    }
            }
        }
        .padding()
    }
}


struct StarRatingView_Previews: PreviewProvider {
    static var previews: some View {
        StarRatingView()
    }
}

struct StarView : View {
    @Binding var isFilled: Bool
    var body: some View {
        Image(systemName: isFilled ? "star.fill" : "star")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(isFilled ? .yellow : .gray)
            .frame(width: 20, height: 20)
    }
}

