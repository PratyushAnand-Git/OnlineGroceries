//
//  ExploreView.swift
//  OnlineGroceries
//
//  Created by student on 20/02/25.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchText = ""
    var image: String
    var text: String
    var baseColor: Color
    
    var body: some View {
        VStack{
            Text("Find Products")
                .font(.customfont(.bold, fontSize: 20))
                .padding(.top,20)
            
            SearchTextField(searchText: $searchText, placeholder: "Search Store")
                .padding(.horizontal,20)
                .padding(.top, 20)
            
            ScrollView(showsIndicators: false){
                VStack{
                    
                    HStack{
                        ExploreItemsView(
                            image: "frash_fruits",
                            text: "Fresh Fruits & Vegetables",
                            baseColor: .green,
                            navigateTo: BlankView()
                        )
                        //Spacer()
                        ExploreItemsView(
                            image: "cooking_oil",
                            text: "Cooking Oil \n   & Ghee",
                            baseColor: .orange,
                            navigateTo: BlankView()
                        )
                        
                    }//.padding(.horizontal,20)
                    .padding(.top, 10)
                    
                    HStack{
                        ExploreItemsView(
                            image: "meat_fish",
                            text: "Meat & Fish",
                            baseColor: .red,
                            navigateTo: BlankView()
                        )
                        //Spacer()
                        ExploreItemsView(
                            image: "frash_fruits",
                            text: "Bakery & Snacks",
                            baseColor: .indigo,
                            navigateTo: BlankView()
                        )
                        
                    }//.padding(.horizontal,20)
                    
                    HStack{
                        ExploreItemsView(
                            image: "dairy_eggs",
                            text: "Dairy & Eggs",
                            baseColor: .orange,
                            navigateTo: BlankView()
                        )
                        //Spacer()
                        ExploreItemsView(
                            image: "beverages",
                            text: "Bevrages",
                            baseColor: .blue,
                            navigateTo: BlankView()
                        )
                        
                    }//.padding(.horizontal,20)
                    
                    HStack{
                        ExploreItemsView(
                            image: "frash_fruits",
                            text: "Dairy & Eggs",
                            baseColor: .orange,
                            navigateTo: BlankView()
                        )
                        //Spacer()
                        ExploreItemsView(
                            image: "frash_fruits",
                            text: "Bevrages",
                            baseColor: .blue,
                            navigateTo: BlankView()
                        )
                        
                    }//.padding(.horizontal,20)
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }//VS
            }//SV
            
            
            
            
        }//VStack
    }
}

#Preview {
    ExploreView(
        image: "frash_fruits",  // Replace with a valid image name
        text: "Fresh Fruits & Vegetables",  // Replace with any text you want
        baseColor: .green  // You can customize the base color here
    )
}
