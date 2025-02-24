//
//  HomeView.swift
//  OnlineGroceries
//
//  Created by student on 11/02/25.
//
import SwiftUI

struct HomeView: View {
     
    @StateObject var homeVM = HomeViewModel.shared
    @State private var searchText = ""

    
    var body: some View {
        ZStack{
          
            VStack{
                
                
                Image("color_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35,height: 35)
                //.padding(.top,10)
                
                HStack{
                    Spacer()
                    Image("location")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                    //.padding(.trailing,5)
                    
                    
                    Text("Dhaka, Banassre")
                        .fontWeight(.medium)
                        .font(.customfont(.semibold, fontSize: 18))
                    Spacer()
                    Image("systemName: ")
                }.multilineTextAlignment(.center)
                    .padding(.bottom, .screenWidth * 0.1)
                
                SearchTextField(searchText: $searchText, placeholder: "Search Store")
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
                
                ScrollView{
                    Image("banner_top")
                        .resizable()
                        .scaledToFit()
                        .padding(.leading, 10)
                        .padding(.trailing, 10)
                    
                    VStack{
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
                                    .foregroundColor(.green)
                                    .padding(.trailing, 10)
                            }
                            
                        }
                        ScrollView(.horizontal,showsIndicators:false){
                            HStack{
                                Spacer()
                                ProductCustomCell(image:"banana",title: "Organic Bananas", subtitle: "7pcs, Price/g",price: "$4.99", navigateTo: AnyView(Banana()) )
                                
                                ProductCustomCell(image:"apple_red",title: "Red Apple", subtitle: "1kg, Price/g",price: "$4.99", navigateTo: AnyView(Apple()) )
                                ZStack{
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color.black.opacity(0.3))
                                        .frame(width: 152, height: 227)
                                    
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color.white)
                                        .frame(width: 150, height: 225)
                                        .overlay(
                                            VStack{Spacer()
                                                Image("apple_red")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .padding(.leading,25)
                                                    .padding(.trailing, 25)
                                                    .padding(.bottom,10)
                                                Text("Red Apple")
                                                    .lineLimit(1)
                                                    .font(.customfont(.bold, fontSize: 17.49))
                                                    .foregroundColor(.black)
                                                    .fontWeight(.bold)
                                                    .padding(.leading,7)
                                                    .padding(.trailing, 7)
                                                    .font(.title)
                                                    .padding(.top,23)
                                                
                                                Text("1kg, Price/g")
                                                    .font(.customfont(.semibold, fontSize: 12))
                                                    .padding(.trailing,57)
                                                    .foregroundColor(.black.opacity(0.5))
                                                Spacer()
                                                HStack{
                                                    Text("$4.99")
                                                        .fontWeight(.bold)
                                                        .font(.customfont(.bold, fontSize: 17.49))
                                                        .padding(.leading,10)
                                                        .lineLimit(1)
                                                    Spacer()
                                                    ZStack{
                                                        RoundedRectangle(cornerRadius: 12)
                                                            .fill(Color.green)
                                                            .frame(width: 35, height: 35)
                                                        
                                                        NavigationLink{
                                                            Apple()
                                                        }label: {
                                                            Image("add_btn")
                                                                .resizable()
                                                                .scaledToFit()
                                                                .frame(width:15, height:15)
                                                        }
                                                    }.padding(.leading,2)
                                                        .padding(.trailing, 11)
                                                }.padding(.bottom,15)
                                            }
                                        )
                                    //.padding()
                                }
                                
                                
                                ZStack{
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color.black.opacity(0.3))
                                        .frame(width: 152, height: 227)
                                    
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color.white)
                                        .frame(width: 150, height: 225)
                                        .overlay(
                                            VStack{Spacer()
                                                Image("banana")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .padding(.leading,25)
                                                    .padding(.trailing, 25)
                                                    .padding(.bottom,10)
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
                                                        .padding(.leading,10)
                                                        .lineLimit(1)
                                                    Spacer()
                                                    ZStack{
                                                        RoundedRectangle(cornerRadius: 12)
                                                            .fill(Color.green)
                                                            .frame(width: 35, height: 35)
                                                        //.overlay(
                                                        
                                                        NavigationLink{
                                                            Banana()
                                                        }label: {
                                                            Image("add_btn")
                                                                .resizable()
                                                                .scaledToFit()
                                                                .frame(width:15, height:15)
                                                        }
                                                    }.padding(.leading,2)
                                                        .padding(.trailing, 11)
                                                }.padding(.bottom,15)
                                            }
                                        )
                                    //.padding()
                                }
                                
                                ProductCell(imageName: "banana", title: "Organic Bananas", quantity: "7pcs, Price/g", price: "$4.99")
                                
                            }//HStack ends
                        }//ScrollView ends
                        
                        Spacer()
                        
                        HStack{
                            
                            Text("Best Selling")
                                .font(.customfont(.bold, fontSize: 23))
                                .padding(.leading, 10)
                                .multilineTextAlignment(.leading)
                            Spacer()
                            
                            NavigationLink{
                                //
                            }label: {
                                Text("See all")
                                    .foregroundColor(.green)
                                    .padding(.trailing, 10)
                            }
                            
                        }
                        ScrollView(.horizontal,showsIndicators:false){
                            HStack{
                                Spacer()
                                
                                ZStack{
                                    
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color.black.opacity(0.3))
                                        .frame(width: 152, height: 227)
                                    
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color.white)
                                        .frame(width: 150, height: 225)
                                        .overlay(
                                            VStack{Spacer()
                                                Image("bell_pepper_red")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .padding(.leading,25)
                                                    .padding(.trailing, 25)
                                                    .padding(.bottom,10)
                                                
                                                Text("Bell Pepper Red")
                                                    .lineLimit(1)
                                                    .font(.customfont(.bold, fontSize: 17.49))
                                                    .foregroundColor(.black)
                                                    .fontWeight(.bold)
                                                    .padding(.leading,7)
                                                    .padding(.trailing, 7)
                                                    .font(.title)
                                                
                                                Text("1kg, Price/g")
                                                    .font(.customfont(.semibold, fontSize: 12))
                                                    .padding(.trailing,57)
                                                    .foregroundColor(.black.opacity(0.5))
                                                Spacer()
                                                HStack{
                                                    Text("$4.99")
                                                        .fontWeight(.bold)
                                                        .font(.customfont(.bold, fontSize: 17.49))
                                                        .padding(.leading,10)
                                                        .lineLimit(1)
                                                    Spacer()
                                                    ZStack{
                                                        RoundedRectangle(cornerRadius: 12)
                                                            .fill(Color.green)
                                                            .frame(width: 35, height: 35)
                                                        //.overlay(
                                                        
                                                        NavigationLink{
                                                            BellPepperRed()
                                                        }label: {
                                                            Image("add_btn")
                                                                .resizable()
                                                                .scaledToFit()
                                                                .frame(width:15, height:15)
                                                        }
                                                    }.padding(.leading,2)
                                                        .padding(.trailing, 11)
                                                }.padding(.bottom,15)
                                            }
                                        )
                                    
                                }
                                ZStack{
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color.black.opacity(0.3))
                                        .frame(width: 152, height: 227)
                                    
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color.white)
                                        .frame(width: 150, height: 225)
                                        .overlay(
                                            VStack{
                                                
                                                Image("ginger")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .padding(.leading,25)
                                                    .padding(.trailing, 25)
                                                    .padding(.top,20)
                                                
                                                Text("Ginger")
                                                    .lineLimit(1)
                                                    .font(.customfont(.bold, fontSize: 17.49))
                                                    .foregroundColor(.black)
                                                    .fontWeight(.bold)
                                                    .padding(.leading,7)
                                                    .padding(.trailing, 7)
                                                    .font(.title)
                                                    .padding(.top,4)
                                                
                                                Text("250gm, Price/g")
                                                    .font(.customfont(.semibold, fontSize: 12))
                                                    .padding(.trailing,57)
                                                    .foregroundColor(.black.opacity(0.5))
                                                Spacer()
                                                HStack{
                                                    Text("$4.99")
                                                        .fontWeight(.bold)
                                                        .font(.customfont(.bold, fontSize: 17.49))
                                                        .padding(.leading,10)
                                                        .lineLimit(1)
                                                    Spacer()
                                                    ZStack{
                                                        RoundedRectangle(cornerRadius: 12)
                                                            .fill(Color.green)
                                                            .frame(width: 35, height: 35)
                                                        //.overlay(
                                                        
                                                        NavigationLink{
                                                            Ginger()
                                                        }label: {
                                                            Image("add_btn")
                                                                .resizable()
                                                                .scaledToFit()
                                                                .frame(width:15, height:15)
                                                        }
                                                    }.padding(.leading,2)
                                                        .padding(.trailing, 11)
                                                }.padding(.bottom,15)
                                            }
                                        )
                                    //.padding()
                                }
                                ZStack{
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color.black.opacity(0.3))
                                        .frame(width: 152, height: 227)
                                    
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color.white)
                                        .frame(width: 150, height: 225)
                                        .overlay(
                                            VStack{Spacer()
                                                Image("banana")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .padding(.leading,25)
                                                    .padding(.trailing, 25)
                                                    .padding(.bottom,10)
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
                                                        .padding(.leading,10)
                                                        .lineLimit(1)
                                                    Spacer()
                                                    ZStack{
                                                        RoundedRectangle(cornerRadius: 12)
                                                            .fill(Color.green)
                                                            .frame(width: 35, height: 35)
                                                        //.overlay(
                                                        
                                                        NavigationLink{
                                                            Banana()
                                                        }label: {
                                                            Image("add_btn")
                                                                .resizable()
                                                                .scaledToFit()
                                                                .frame(width:15, height:15)
                                                        }
                                                    }.padding(.leading,2)
                                                        .padding(.trailing, 11)
                                                }.padding(.bottom,15)
                                            }
                                        )
                                    //.padding()
                                }
                            }//last HStack ends
                            
                        }//ScrollView ends
                    }
                    HStack{
                        
                        Text("Groceries")
                            .font(.customfont(.bold, fontSize: 28))
                            .padding(.leading, 10)
                            .multilineTextAlignment(.leading)
                        Spacer()
                        
                        NavigationLink{
                            //
                        }label: {
                            Text("See all")
                            
                                .foregroundColor(.green)
                                .padding(.trailing, 10)
                            
                        }}
                    ScrollView(.horizontal,showsIndicators:false){
                        
                        HStack{
                            
                            RoundedRectangle(cornerRadius: 25)
                                .fill(Color.orange.opacity(0.1))
                                .frame(width: 227, height: 110)
                                .overlay(
                                    HStack{
                                        Image("pulses")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 125, height: 90)
                                        
                                        Text("Pulses")
                                            .font(.customfont(.bold, fontSize: 17.49))
                                            .foregroundColor(.black)
                                            .fontWeight(.bold)
                                        
                                        
                                        
                                    })
                            
                            //
                            
                            RoundedRectangle(cornerRadius: 25)
                                .fill(Color.green.opacity(0.1))
                                .frame(width: 227, height: 110)
                                .overlay(
                                    HStack{
                                        Image("rice")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 125, height: 90)
                                        
                                        Text("Rice")
                                            .font(.customfont(.bold, fontSize: 17.49))
                                            .foregroundColor(.black)
                                            .fontWeight(.bold)
                                        
                                        
                                        
                                    })
                            
                        }}
                    
                    
                    
                    
                    ScrollView(.horizontal,showsIndicators:false){
                        HStack{
                            Spacer()
                            
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.black.opacity(0.3))
                                    .frame(width: 152, height: 227)
                                
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.white)
                                    .frame(width: 150, height: 225)
                                    .overlay(
                                        VStack{Spacer()
                                            Image("beef_bone")
                                                .resizable()
                                                .scaledToFit()
                                                .padding(.leading,25)
                                                .padding(.trailing, 25)
                                                .padding(.bottom,10)
                                            
                                            Spacer()
                                            Spacer()
                                            
                                            Text("Beef Bone")
                                                .lineLimit(1)
                                                .font(.customfont(.bold, fontSize: 17.49))
                                                .foregroundColor(.black)
                                                .fontWeight(.bold)
                                                .padding(.leading,7)
                                                .padding(.trailing, 50)
                                                .font(.title)
                                            
                                            Text("1kg, Price/g")
                                                .font(.customfont(.semibold, fontSize: 12))
                                                .padding(.trailing,57)
                                                .foregroundColor(.black.opacity(0.5))
                                            Spacer()
                                            HStack{
                                                Text("$4.99")
                                                    .fontWeight(.bold)
                                                    .font(.customfont(.bold, fontSize: 17.49))
                                                    .padding(.leading,10)
                                                    .lineLimit(1)
                                                Spacer()
                                                ZStack{
                                                    RoundedRectangle(cornerRadius: 12)
                                                        .fill(Color.green)
                                                        .frame(width: 35, height: 35)
                                                    //.overlay(
                                                    
                                                    NavigationLink{
                                                        BeefBone()
                                                    }label: {
                                                        Image("add_btn")
                                                            .resizable()
                                                            .scaledToFit()
                                                            .frame(width:15, height:15)
                                                    }
                                                }.padding(.leading,2)
                                                    .padding(.trailing, 11)
                                            }.padding(.bottom,15)
                                        }
                                    )
                                //.padding()
                            }
                            ZStack{
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.black.opacity(0.3))
                                    .frame(width: 152, height: 227)
                                //.overlay(Text("RoundedRectangle")
                                //.foregroundColor(.black)
                                //.font(.title))
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.white)
                                    .frame(width: 150, height: 225)
                                    .overlay(
                                        VStack{Spacer()
                                            Image("broiler_chicken")
                                                .resizable()
                                                .scaledToFit()
                                                .padding(.leading,25)
                                                .padding(.trailing, 25)
                                                .padding(.bottom,10)
                                            Text("Broiler Chicken")
                                                .lineLimit(1)
                                                .font(.customfont(.bold, fontSize: 17.49))
                                                .foregroundColor(.black)
                                                .fontWeight(.bold)
                                                .padding(.leading,7)
                                                .padding(.trailing, 7)
                                                .font(.title)
                                                .padding(.top,23)
                                            
                                            Text("1kg, Price/g")
                                                .font(.customfont(.semibold, fontSize: 12))
                                                .padding(.trailing,57)
                                                .foregroundColor(.black.opacity(0.5))
                                            Spacer()
                                            HStack{
                                                Text("$4.99")
                                                    .fontWeight(.bold)
                                                    .font(.customfont(.bold, fontSize: 17.49))
                                                    .padding(.leading,10)
                                                    .lineLimit(1)
                                                Spacer()
                                                ZStack{
                                                    RoundedRectangle(cornerRadius: 12)
                                                        .fill(Color.green)
                                                        .frame(width: 35, height: 35)
                                                    //.overlay(
                                                    
                                                    NavigationLink{
                                                        BroilerChicken()
                                                    }label: {
                                                        Image("add_btn")
                                                            .resizable()
                                                            .scaledToFit()
                                                            .frame(width:15, height:15)
                                                    }
                                                }.padding(.leading,2)
                                                    .padding(.trailing, 11)
                                            }.padding(.bottom,15)
                                        }
                                    )
                                //.padding()
                            }
                            ZStack{
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.black.opacity(0.3))
                                    .frame(width: 152, height: 227)
                                //.overlay(Text("RoundedRectangle")
                                //.foregroundColor(.black)
                                //.font(.title))
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.white)
                                    .frame(width: 150, height: 225)
                                    .overlay(
                                        VStack{Spacer()
                                            Image("egg_chicken_red")
                                                .resizable()
                                                .scaledToFit()
                                                .padding(.leading,25)
                                                .padding(.trailing, 25)
                                                .padding(.bottom,10)
                                            Text("Egg Chicken Red")
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
                                                    .padding(.leading,10)
                                                    .lineLimit(1)
                                                Spacer()
                                                ZStack{
                                                    RoundedRectangle(cornerRadius: 12)
                                                        .fill(Color.green)
                                                        .frame(width: 35, height: 35)
                                                    
                                                    NavigationLink{
                                                        EggChickenRed()
                                                    }label: {
                                                        Image("add_btn")
                                                            .resizable()
                                                            .scaledToFit()
                                                            .frame(width:15, height:15)
                                                    }
                                                }.padding(.leading,2)
                                                    .padding(.trailing, 11)
                                            }.padding(.bottom,15)
                                        }
                                    )
                                //.padding()
                            }//HStack ends
                            
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.black.opacity(0.3))
                                    .frame(width: 152, height: 227)
                                //.overlay(Text("RoundedRectangle")
                                //.foregroundColor(.black)
                                //.font(.title))
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.white)
                                    .frame(width: 150, height: 225)
                                    .overlay(
                                        VStack{Spacer()
                                            Image("egg_chicken_white")
                                                .resizable()
                                                .scaledToFit()
                                                .padding(.leading,25)
                                                .padding(.trailing, 25)
                                                .padding(.bottom,10)
                                            Spacer()
                                            Text("Egg Chicken White")
                                                .lineLimit(1)
                                                .font(.customfont(.bold, fontSize: 17.49))
                                                .foregroundColor(.black)
                                                .fontWeight(.bold)
                                                .padding(.leading,7)
                                                .padding(.trailing, 7)
                                                .font(.title)
                                            
                                            Text("1kg, Price/g")
                                                .font(.customfont(.semibold, fontSize: 12))
                                                .padding(.trailing,57)
                                                .foregroundColor(.black.opacity(0.5))
                                            Spacer()
                                            HStack{
                                                Text("$4.99")
                                                    .fontWeight(.bold)
                                                    .font(.customfont(.bold, fontSize: 17.49))
                                                    .padding(.leading,10)
                                                    .lineLimit(1)
                                                Spacer()
                                                ZStack{
                                                    RoundedRectangle(cornerRadius: 12)
                                                        .fill(Color.green)
                                                        .frame(width: 35, height: 35)
                                                    
                                                    NavigationLink{
                                                        EggChickenWhite()
                                                    }label: {
                                                        Image("add_btn")
                                                            .resizable()
                                                            .scaledToFit()
                                                            .frame(width:15, height:15)
                                                    }
                                                }.padding(.leading,2)
                                                    .padding(.trailing, 11)
                                            }.padding(.bottom,15)
                                        }
                                    )
                                //.padding()
                            } }
                        
                        
                        
                        
                        
                    } //VStack ends
                }//Vertical ScrollView ends
                
                Spacer()
                  /* HStack{
                 //TabButton(title: "Shop", icon: "storefront", isSelect: true) {
                 // print("Shop tapped")
                 
                       TabButton(title: "Shop", icon: "storefront", isSelect: true) {
                           print("Shop tapped")
                           
                       }
                       
                       TabButton(title: "Explore", icon: "magnifyingglass", isSelect: true) {
                           print("Shop tapped")
                           
                       }
                       
                       TabButton(title: "Cart", icon: "cart", isSelect: true) {
                           print("Shop tapped")
                           
                       }
                       
                       TabButton(title: "Favorite", icon: "heart", isSelect: true) {
                           print("Shop tapped")
                           
                       }
                       
                       TabButton(title: "Account", icon: "person", isSelect: true) {
                           print("Shop tapped")
                           
                       }
                 
                 }
                 //.padding(.top, 5)
                 .padding(.bottom, .bottomInsets)
                 .padding(.horizontal, 10)
                 .background(Color.white)
                 .cornerRadius(15)
                 .shadow(color: Color.black.opacity(0.15), radius: 3, x: 0, y: -2)*/
                 //}
            }
        }
        }
    }
    
    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView {
                HomeView()
            }
            
        }
    }

