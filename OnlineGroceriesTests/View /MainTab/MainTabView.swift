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
            
            if(homeVM.selectTab == 0) {
                HomeView()
            }else if(homeVM.selectTab == 1) {
                ExploreView()
            }else if(homeVM.selectTab == 2) {
                MyCartView()
            }else if(homeVM.selectTab == 3) {
                FavouriteView()
            }else if(homeVM.selectTab == 4) {
                // AccountView()
            }
            
            VStack{
                
                Spacer()
                
                HStack{
                    TabButton(title: "Shop", icon:"storefront", isSelect: homeVM.selectTab == 0){
                        print("Button Tab")
                        
                        DispatchQueue.main.async {
                            
                            withAnimation {
                                homeVM.selectTab = 0
                            }
                        }
                        
                    }
                    
                    TabButton(title: "Explore", icon: "magnifyingglass", isSelect: homeVM.selectTab == 1){
                        print("Button Tab")
                        
                        DispatchQueue.main.async {
                            
                            withAnimation {
                                homeVM.selectTab = 1
                            }
                        }
                   }
                    TabButton(title: "Cart", icon: "cart", isSelect: homeVM.selectTab == 2){
                        print("Button Tab")
                        
                        DispatchQueue.main.async {
                            
                            withAnimation {
                                homeVM.selectTab = 2
                            }
                        }
                    }
                    
                    TabButton(title: "Favourite", icon: "heart", isSelect: homeVM.selectTab == 3){
                        print("Button Tab")
                        
                        DispatchQueue.main.async {
                            
                            withAnimation {
                                homeVM.selectTab = 3
                            }
                        }
                    }
                    
                    TabButton(title: "Account", icon: "person", isSelect: homeVM.selectTab == 4){
                        print("Button Tab")
                        
                        DispatchQueue.main.async {
                            
                            withAnimation {
                                homeVM.selectTab = 4
                            }
                        }
                    }
                }
                .padding(.top,10)
                .padding(.bottom, .bottomInsets)
                .padding(.horizontal,10)
                .background(Color.white)
                .cornerRadius(15)
                .shadow(color: Color.black.opacity(0.15), radius: 3,x:0,y:-2)
             }
          }
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
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

