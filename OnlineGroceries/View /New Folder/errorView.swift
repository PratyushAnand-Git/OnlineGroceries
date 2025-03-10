//
//  errorView.swift
//  OnlineGroceries
//
//  Created by student on 09/03/25.
//

import SwiftUI

struct errorView: View {
    var body: some View {
        ZStack{
           //Color.white
               // .edgesIgnoringSafeArea(.all)
            
            VStack{
                NavigationLink{
                    
                } label:{
                    Image("close")
                        .resizable()
                        .frame(width:15, height: 15)
                        .padding(.trailing, 270)
                }
                Spacer()
                
                VStack(spacing: 20){
                    Image("order_fail")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200)
                        .foregroundColor(.gray)
                    
                    Text("Oops! Order Failed")
                        .font(.title)
                        //.fontWeight(.bold)
                        .foregroundColor(.black)
                        .font(.customfont(.bold, fontSize: 18))
                    
                    Text("Something went terribly wrong.")
                        .font(.body)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        Text("Please Try Again")
                            .font(.body)
                            .fontWeight(.bold)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                    }
                    
                    Button(action: {
                        
                    }) {
                        Text("Back to home")
                            .font(.body)
                            .fontWeight(.bold)
                            .padding()
                            .frame(maxWidth: .infinity)
                            //.background(Color.gray.opacity(0.3))
                            .foregroundColor(.black)
                            .cornerRadius(10)
                    }
                    //            RoundedRectangle(cornerRadius: 10)
                    //                .fill(Color.white)
                    //                .ignoresSafeArea()
                    //                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    //                .overlay(
                    //                    Text("Error occurred")
                    //                        .foregroundColor(.white)
                    //                        .font(.largeTitle)
                    //                        .bold()
                    //                                )
                }
            }
                .padding()
                .background(Color.white)
                .cornerRadius(20)
                //.shadow(radius:10)
                .padding(.horizontal, 40)
                .padding(.vertical,500)
                .shadow(color: Color.black.opacity(0.9), radius: 100, x: 0, y: 0)
                
                Spacer()
            }}
}

#Preview {
    errorView()
}
