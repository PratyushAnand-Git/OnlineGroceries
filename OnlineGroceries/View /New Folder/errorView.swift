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
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Spacer()
                
                VStack(spacing: 20){
                    Image(systemName: "bag")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                        .foregroundColor(.gray)
                    
                    Text("Oops! Order Failed")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                    
                    Text("Something went terribly wrong.")
                        .font(.body)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                    
                    Button(action: {
                        
                    }) {
                        Text("Please Try Again")
                            .font(.body)
                            .fontWeight(.bold)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    
                    Button(action: {
                        
                    }) {
                        Text("Back to home")
                            .font(.body)
                            .fontWeight(.bold)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.gray.opacity(0.3))
                            .foregroundColor(.blue)
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
                .shadow(radius:10)
                .padding(.horizontal, 20)
                
                Spacer()
            }}
}

#Preview {
    errorView()
}
