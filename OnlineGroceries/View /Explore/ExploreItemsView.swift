//
//  ExploreItemsView.swift
//  OnlineGroceries
//
//  Created by student on 20/02/25.
//

import SwiftUI

struct ExploreItemsView: View {
    var image: String
    var text: String
    var baseColor: Color
    var navigateTo: AnyView 
    
    var body: some View {
        NavigationLink(destination: navigateTo){
            ZStack{
                NavigationLink(destination: navigateTo){
                
                    RoundedRectangle(cornerRadius: 25)
                    .fill(baseColor)
                    .frame(width: 170, height: 196)
                    .overlay(
                
                
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.white.opacity(0.9))
                    .frame(width: 168, height: 194)
                    .overlay(
                        VStack{Spacer()
                            Image(image)
                                .resizable()
                                .scaledToFit()
                                .padding(.leading,25)
                                .padding(.trailing, 25)
                                .padding(.bottom,10)
                            Text(text)
                                .lineLimit(2)
                                .font(.customfont(.bold, fontSize: 17.49))
                                .foregroundColor(.black)
                                .fontWeight(.bold)
                                .padding(.leading,7)
                                .padding(.trailing, 7)
                                .font(.title)
                                .padding(.bottom,20)
                        }
                    ))
                //.padding()
            }
            }//ZS
        }
        
    }
}

// BlankView that conforms to the View protocol
/*struct BlankView: View {
    var body: some View {
        Text("This is a blank view")
            .onAppear {
                print("Navigated to BlankView")
            }
    }
}*/

// Example usage of ExploreItemsView with BlankView as the destination
/*struct ContentView: View {
    var body: some View {
        NavigationView {
            ExploreItemsView(
                image: "frash_fruits",  // Replace with a valid image name
                text: "Fresh Fruits & Vegetables",  // Replace with any text you want
                baseColor: .green,  // Customize the base color here
                navigateTo: BlankView()  // Pass BlankView as the destination
            )
            .navigationTitle("Explore Items")
        }
    }
}*/

#Preview {
    ExploreItemsView(
        image: "frash_fruits",  // Replace with a valid image name
        text: "Fresh Fruits & Vegetables",  // Replace with any text you want
        baseColor: .green,  // You can customize the base color here
        navigateTo: AnyView(BlankView())
    )
}
