//
//  ProductCustomCell.swift
//  OnlineGroceries
//
//  Created by student on 20/02/25.
//

import SwiftUI

struct ProductCustomCell: View {
    var size: CGFloat = 0.0
    var image: String = ""
    var title: String = ""
    var subtitle: String = ""
    var price: String = ""
    var navigateTo: AnyView // Now, this is AnyView to accept any view
    
    var body: some View {
            ZStack{
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.black.opacity(0.3))
                    .frame(width: 177, height: 252)
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.white)
                    .frame(width: 175, height: 250)
                    .overlay(
                        VStack{Spacer()
                            Image(image)
                                .resizable()
                                .scaledToFit()
                                .padding(.leading,25)
                                .padding(.trailing, 25)
                                .padding(.bottom,10)
                            Text(title)
                                .lineLimit(2)
                                .font(.customfont(.bold, fontSize: 17.49))
                                .foregroundColor(.black)
                                .fontWeight(.bold)
                                .padding(.leading,7)
                                .padding(.trailing, 7)
                                .font(.title)
                            
                            Text(subtitle)
                                .font(.customfont(.semibold, fontSize: 12))
                                .padding(.trailing,57)
                                .foregroundColor(.black.opacity(0.5))
                            
                            Spacer()
                            
                            HStack{
                                Text(price)
                                    .fontWeight(.bold)
                                    .font(.customfont(.bold, fontSize: 17.49))
                                    .padding(.leading,10)
                                    .lineLimit(1)
                                Spacer()
                                ZStack{
                                    RoundedRectangle(cornerRadius: 12)
                                        .fill(Color.green)
                                        .frame(width: 35, height: 35)
                                    //.overlay(
                                    
                                    NavigationLink(destination: navigateTo){
                                        Image("add_btn")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width:15, height:15)
                                    }
                                }.padding(.leading,2)
                                    .padding(.trailing, 11)
                            }.padding(.bottom,15)
                        }
                    )
                //.padding()
            }
    }
}

#Preview {
    HStack{
        ProductCustomCell(image:"banana",title: "Organic Bananas", subtitle: "7pcs, Price/g",price: "$4.99", navigateTo: AnyView(Banana()) )
        
    }
}
