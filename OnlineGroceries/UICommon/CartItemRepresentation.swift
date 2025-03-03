//
//  CartItemRepresentation.swift
//  OnlineGroceries
//
//  Created by student on 03/03/25.
//

import SwiftUI

struct CartItemRepresentation: View {
    @State private var quantity: Int = 1
    let pricePerItem: Double = 4.99
    
    var body: some View {
        HStack{
            
            Image("bell_pepper_red")
                .resizable()
                .scaledToFit()
                .frame(width:90,height:90)
                .font(.customfont(.bold,fontSize: 12))
            
            VStack{
                HStack{
                    Text("bell_pepper_red")
                    
                    Spacer()
                Image("close")
                        .resizable()
                        .frame(width:15, height:15)
                }.padding(.horizontal,30)
                Text("1kg, Price")
                    .padding(.trailing,190)
                    .font(.customfont(.semibold,fontSize: 12))
                    .foregroundColor(.black.opacity(0.6))
                
                
                //
                HStack{
                    HStack{
                        
                        Button(action:{
                            if quantity > 1{
                                quantity -= 1
                            }
                        }) {
                            Image("8687942_ic_fluent_subtract_regular_icon")
                                .resizable()
                                .frame(width: 15, height: 15)
                                .foregroundColor(.green)
                            
                        }
                        
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                            .fill(Color.white)
                            .frame(width: 30, height: 30)
                            .overlay(
                                Text("\(quantity)")
                                //.font(.title)
                                    .font(.customfont(.bold, fontSize: 15))
                                //.padding(.horizontal, 10)
                            )//.padding(.leading,20)
                        
                        Button(action: {
                            quantity += 1
                        }) {
                            Image("4115237_add_plus_icon")
                            //(systemName : "plus.circle.fill")
                                .resizable()
                                .frame(width: 15, height: 15)
                                .foregroundColor(.green)
                            
                        }
                        
                        
                        Spacer()
                    }//HStack2//
                    .padding(.horizontal)
                }//HStack1
                    
                    Text(String(format: "$%.2f", totalPrice))
                        .font(.title)
                        .foregroundColor(.black)
                //
            }
        }
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
        //
        var totalPrice: Double {
            return pricePerItem * Double(quantity)
        }//
}

#Preview {
    CartItemRepresentation()
}
