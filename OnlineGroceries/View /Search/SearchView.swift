//
//  SearchView.swift
//  OnlineGroceries
//
//  Created by student on 21/02/25.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    
    var body: some View {
        Text("Find Products")
            .font(.customfont(.bold, fontSize: 20))
            .padding(.top,20)
        
        SearchTextField(searchText: $searchText, placeholder: "Search Store")
            .padding(.horizontal,20)
            .padding(.top, 20)
        
        ScrollView(showsIndicators: false){
            
            HStack{
                ProductCustomCell(image:"banana",title: "Egg Chicken Red", subtitle: "7pcs, Price/g",price: "$4.99", navigateTo: AnyView(Banana()) )
                ProductCustomCell(image:"banana",title: "Egg Chicken White", subtitle: "7pcs, Price/g",price: "$4.99", navigateTo: AnyView(Banana()) )
            }.padding(.horizontal,20)
            
            HStack{
                ProductCustomCell(image:"banana",title: "Egg Pasta", subtitle: "7pcs, Price/g",price: "$4.99", navigateTo: AnyView(Banana()) )
                ProductCustomCell(image:"banana",title: "Egg Noodles", subtitle: "7pcs, Price/g",price: "$4.99", navigateTo: AnyView(Banana()) )
            }
            
            HStack{
                ProductCustomCell(image:"banana",title: "Mayonese Eggless", subtitle: "7pcs, Price/g",price: "$4.99", navigateTo: AnyView(Banana()) )
                ProductCustomCell(image:"banana",title: "Egg Noodles", subtitle: "7pcs, Price/g",price: "$4.99", navigateTo: AnyView(Banana()) )
            }
            
            HStack{
                ProductCustomCell(image:"banana",title: "Organic Bananas", subtitle: "7pcs, Price/g",price: "$4.99", navigateTo: AnyView(Banana()) )
                ProductCustomCell(image:"banana",title: "Organic Bananas", subtitle: "7pcs, Price/g",price: "$4.99", navigateTo: AnyView(Banana()) )
            }
        }
        
    }
}

#Preview {
    SearchView()
}
