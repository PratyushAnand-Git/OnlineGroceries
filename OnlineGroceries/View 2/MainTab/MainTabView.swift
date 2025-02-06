//
//  MainTabView.swift
//  OnlineGroceries
//
//  Created by student on 05/02/25.
//

import SwiftUI

struct MainTabView: View {
    
    @StateObject var homeVM = HomeViewModel.shared
    @State private var searchText = ""
    
    var body: some View {
        ZStack{
            
            /*if(homeVM.selectTab == 0) {
               // HomeView()
            }else if(homeVM.selectTab == 1) {
                //ExploreView()
            }else if(homeVM.selectTab == 2) {
                //MyCartView()
            }else if(homeVM.selectTab == 3) {
                //FavouriteView()
            }else if(homeVM.selectTab == 4) {
               // AccountView()
            }
            */
            VStack{
                    
                    
                    Image("color_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 35,height: 35)
                        .padding(.top,60)
                
                    
                    HStack{
                        Image("search")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20,height: 20)
                            .padding(.trailing,5)
                        
                        VStack{
                            TextField("Search here", text: $searchText)
                                .padding()
                                .textFieldStyle(RoundedBorderTextFieldStyle()) // Rounded border style
                                .padding([.leading, .trailing], 20)
                                .foregroundStyle(Color.blue)
                                .cornerRadius(40)
                            
                            Spacer() // To push content down if necessary
                            
                            Text("Search Text: \(searchText)")
                                .padding()
                        }
                    }
                
                Spacer()
                
                HStack{
                    
                    TabButton(title: "Shop", icon: "store_tab", isSelect: homeVM.selectTab == 0) {
                        
                        print("Button Tab")
                        
                        DispatchQueue.main.async {
                             
                            withAnimation {
                                homeVM.selectTab = 0
                            }
                        }
                        
                       
                    }
                    TabButton(title: "Explore", icon: "explore_tab", isSelect: homeVM.selectTab == 1) {
                        DispatchQueue.main.async {
                             
                            withAnimation {
                                homeVM.selectTab = 1
                            }
                        }
                    }
                    
                    TabButton(title: "Cart", icon: "cart_tab", isSelect: homeVM.selectTab == 2) {
                        DispatchQueue.main.async {
                             
                            withAnimation {
                                homeVM.selectTab = 2
                            }
                        }
                    }
                    
                    TabButton(title: "Favourite", icon: "fav_tab", isSelect: homeVM.selectTab == 3) {
                        DispatchQueue.main.async {
                             
                            withAnimation {
                                homeVM.selectTab = 3
                            }
                        }
                    }
                    
                    TabButton(title: "Account", icon: "account_tab", isSelect: homeVM.selectTab == 4) {
                        DispatchQueue.main.async {
                             
                            withAnimation {
                                homeVM.selectTab = 4
                            }
                        }
                    }
                    
                                    
                }
                .padding(.top, 10)
                .padding(.bottom, .bottomInsets)
                .padding(.horizontal, 10)
                .background(Color.white)
                .cornerRadius(15)
                .shadow(color: Color.black.opacity(0.15), radius: 3, x: 0, y: -2)
            }
        }
        .navigationTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .ignoresSafeArea()
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MainTabView()
        }
        
    }
}
