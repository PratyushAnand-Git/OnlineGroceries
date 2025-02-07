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
                    Spacer()
                    Image("location")
                        .scaledToFit()
                        .frame(width: 10, height: 10)
                        .padding(.trailing,5)
                    Text("Dhaka, Banassre")
                        .fontWeight(.medium)
                        .font(.customfont(.semibold, fontSize: 18))
                        //.foregroundColor(.primaryText)
                        //.frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        //.padding(.bottom, 4)
                    Spacer()
                    Image("systemName: ")
                }.multilineTextAlignment(.center)
                   // .scaledToFit()
                    //.frame(width:50) //  min(100, UIScreen.main.bounds.width * 0.3)Dynamically scales with screen size
                    .padding(.bottom, .screenWidth * 0.1)
                
                SearchTextField(searchText: $searchText, placeholder: "Search Store")
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
                    
                Image("banner_top")
                    .resizable()
                    .scaledToFit()
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
                    
                //Spacer()
                
                HStack{
                    
                    Text("Exclusive Offer")
                        .font(.customfont(.bold, fontSize: 28))
                        .padding(.leading, 10)
                        .multilineTextAlignment(.leading)
                    Spacer()
                    
                    NavigationLink{
                        //
                    }label: {
                        Text("See all")
                            //.font(.customfont(.semibold, fontSize: 18))
                            .foregroundColor(.green)
                            .padding(.trailing, 10)
                           // .multilineTextAlignment(.center)
                           // .frame( minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60 )
                           // .background(Color(hex: "5383EC"))
                            //.cornerRadius()
                    }
                    
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.black.opacity(0.3))
                        .frame(width: 152, height: 252)
                        //.overlay(Text("RoundedRectangle")
                            //.foregroundColor(.black)
                            //.font(.title))
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.white)
                        .frame(width: 150, height: 250)
                        .overlay(
                            VStack{
                                Image("banana")
                                    .resizable()
                                    .scaledToFit()
                                    .padding(.leading,25)
                                    .padding(.trailing, 25)
                                    .padding(.bottom,100)
                                Text("Organic Bananas")
                                    .lineLimit(1)
                                    .font(.customfont(.bold, fontSize: 17.49))
                                    .foregroundColor(.black)
                                    .fontWeight(.bold)
                                    .padding(.leading,7)
                                    .padding(.trailing, 7)
                                    .font(.title)
                            
                                Text("7pcs, Price/g")
                                    .font(.customfont(.semibold, fontSize: 12))
                                    .padding(.trailing,57)
                                    .foregroundColor(.black.opacity(0.5))
                                Spacer()
                                HStack{
                                    Text("$4.99")
                                        .fontWeight(.bold)
                                        .font(.customfont(.bold, fontSize: 17.49))
                                        .padding(.trailing,80)
                                        .lineLimit(1)
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 12)
                                            .fill(Color.green)
                                            .frame(width: 35, height: 35)
                                            //.overlay(
                                        
                                        NavigationLink{
                                            //
                                        }label: {
                                            Image("add_btn")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width:15, height:15)
                                                //.background(Color.green)
                                                //.cornerRadius(12)
                                            
                                        }}.padding(.leading,7)
                                        .padding(.trailing, 7)
                                //Spacer()
                                }
                            }
                        )
                        //.padding()
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
