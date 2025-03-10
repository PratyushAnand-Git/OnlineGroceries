//
//  FavouriteView.swift
//  OnlineGroceries
//
//  Created by student on 05/03/25.
//

import SwiftUI

struct FavouriteView: View {
    var body: some View {
        ZStack{
            VStack{
                Text("Favourite")
                    .font(.customfont(.bold,fontSize: 20))
                    .padding(.top, 60)
                    .padding(.bottom, 40)
                Spacer()
                Divider()
                ScrollView{
                    FavouriteItemView(image:"sprite_can", title:"Sprite Can",subtitle:"325ml, Price",price:"$1.50"  )
                    Divider()
                        .padding(.horizontal,20)
                        .padding(.top,20)
                        .padding(.bottom,20)
                    FavouriteItemView(image:"diet_coke", title:"Diet Coke",subtitle:"355ml, Price",price:"$1.99"  )
                    Divider()
                        .padding(.horizontal,20)
                        .padding(.top,20)
                        .padding(.bottom,20)
                    FavouriteItemView(image:"juice_apple_grape", title:"Apple & Grape Juice",subtitle:"2L, Price",price:"$15.50"  )
                    Divider()
                        .padding(.horizontal,20)
                        .padding(.top,20)
                        .padding(.bottom,20)
                    FavouriteItemView(image:"cocacola_can", title:"Coca Cola Can",subtitle:"325ml, Price",price:"$4.99"  )
                    Divider()
                        .padding(.horizontal,20)
                        .padding(.top,20)
                        .padding(.bottom,20)
                    FavouriteItemView(image:"pepsi_can", title:"Pepsi Can",subtitle:"330ml, Price",price:"$4.99"  )
                    Divider()
                        .padding(.horizontal,20)
                        .padding(.top,20)
                        .padding(.bottom,20)
                }
                .padding(.top, 20)
            }
        }
    }//SomeView
}//View

#Preview {
    FavouriteView()
}
