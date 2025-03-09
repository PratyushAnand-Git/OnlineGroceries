//
//  BeveragesView.swift
//  OnlineGroceries
//
//  Created by student on 20/02/25.
//

import SwiftUI

struct BeveragesView: View {
    var body: some View {
        
            
            HStack{
                NavigationLink{
                }label: {
                    Image("back")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                }
                Spacer()
                Text("Beverages")
                    .font(.customfont(.bold, fontSize: 20))
                Spacer()
                
                NavigationLink{
                    
                } label: {
                    Image("filter_ic")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                }
            }//HS
            .padding(.horizontal,20)
        
            
        ScrollView(showsIndicators: false){
            VStack{
                HStack{
                    ProductCustomCell(image:"diet_coke",title: "Diet Coke", subtitle: "335ml,Price",price: "$1.99", navigateTo: AnyView(BlankView()) )
                   
                    ProductCustomCell(image:"sprite_can",title: "Sprite Can", subtitle: "325ml,Price",price: "$1.50", navigateTo: AnyView(BlankView()) )
                }
                HStack{
                    ProductCustomCell(image:"juice_apple_grape",title: "Apple & Grape Juice", subtitle: "2L,Price",price: "$15.99", navigateTo: AnyView(BlankView()) )
                    
                    ProductCustomCell(image:"orenge_juice",title: "Orange Juice", subtitle: "2L,Price",price: "$15.99", navigateTo: AnyView(BlankView()) )
                }
                
                HStack{
                    ProductCustomCell(image:"cocacola_can",title: "Coca Cola Can", subtitle: "325ml,Price",price: "$1.99", navigateTo: AnyView(BlankView()) )
                    
                    ProductCustomCell(image:"pepsi_can",title: "Pepsi Can", subtitle: "330ml,Price",price: "$4.99", navigateTo: AnyView(BlankView()) )
                }
                
                HStack{
                    ProductCustomCell(image:"diet_coke",title: "Diet Coke", subtitle: "335ml,Price",price: "$1.99", navigateTo: AnyView(BlankView()) )
                    
                    ProductCustomCell(image:"sprite_can",title: "Sprite Can", subtitle: "325ml,Price",price: "$1.50", navigateTo: AnyView(BlankView()) )
                }
                
                
            }//VS
        }.padding(.top,30)
            
        
    }
}

#Preview {
    BeveragesView()
}
