//
//  FavouriteItemView.swift
//  OnlineGroceries
//
//  Created by student on 05/03/25.
//

import SwiftUI

struct FavouriteItemView: View {
    var image: String = ""
    var title: String = ""
    var subtitle: String = ""//
    var price: String = ""
   // var navigateTo: AnyView
    var body: some View {
        HStack{
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width:30, height:60)
                .padding(.leading,15)
            //Spacer()
            VStack{
                Text(title)
                    .font(.customfont(.bold,fontSize: 15))
                Text(subtitle)
                    .font(.customfont(.semibold,fontSize: 10))
                    .foregroundColor(.gray)
            }
            .padding(.leading,30)
            Spacer()
            HStack{
                Text(price)
              
                NavigationLink {
                    //AnyView(destination())
                } label: {
                    Image("1814086_arrow_forward_next_right_icon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 30)
                        .foregroundColor(.black)
                }
                
            }
            .padding(.horizontal, 10)
            
        }
        .padding(.horizontal,20)
    }
}

#Preview {
    FavouriteItemView(image:"sprite_can", title:"Sprite Can",subtitle:"325ml, Price",price:"$1.50"  )
    FavouriteItemView(image:"sprite_can", title:"Sprite Can",subtitle:"325ml, Price",price:"$1.50"  )
}
