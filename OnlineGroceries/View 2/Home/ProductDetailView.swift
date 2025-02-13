//
//  ProductDetailView.swift
//  OnlineGroceries
//
//  Created by student on 12/02/25.
//

import SwiftUI

struct ProductDetailView: View {
    var body: some View {
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(Color.green.opacity(0.1))
                    .frame(width: .screenWidth, height: .screenWidth)
                    .cornerRadius(20, corner: [.bottomLeft, .bottomRight])
                    .overlay(
                        VStack{
                            
                            HStack{
                                NavigationLink{
                                    
                                } label: {
                                    Image("back")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 20, height: 20)
                                }
                                Spacer()
                                
                                NavigationLink{
                                    
                                } label: {
                                    Image("share")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 20, height: 20)
                                }
                            }
                           // .padding(.bottom,100)
                            
                            
                            
                            
                                //.padding(.bottom, 530)
                                .ignoresSafeArea()
                        }//zs
            
            
            
                        
                       )
                .padding(.bottom, 570)}
        }//VStack ends
    }
}


#Preview {
    ProductDetailView()
}
