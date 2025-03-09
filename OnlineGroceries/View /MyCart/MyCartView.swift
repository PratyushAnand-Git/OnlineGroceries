import SwiftUI

struct MyCartView: View {
    var body: some View {
        
        ZStack {
            ScrollView{
                VStack{
                    Text("My Cart")
                        .font(.headline)
                        .padding(.top,80)
                    
                    Divider()
                        .padding(.top,20)
                    CartItemRepresentation(pricePerItem: 4.99,image:"bell_pepper_red",title: "Bell Pepper Red", subtitle: "1kg,Price", navigateTo: AnyView(BellPepperRed()) )
                        .padding(.top,20)
                    Divider()
                        .padding(.horizontal,20)
                        .padding(.top,20)
                    CartItemRepresentation(pricePerItem: 1.99,image:"banana",title: "Organic Bananas", subtitle: "4pcs,Price", navigateTo: AnyView(BellPepperRed()) )
                        .padding(.top,30)
                    Divider()
                        .padding(.horizontal,20)
                        .padding(.top,30)
                    
                    CartItemRepresentation(pricePerItem: 1.99,image:"ginger",title: "Ginger", subtitle: "1kg,Price", navigateTo: AnyView(BellPepperRed()) )
                        .padding(.top,30)
                    Divider()
                        .padding(.horizontal,20)
                        .padding(.top,30)
                    
                    CartItemRepresentation(pricePerItem: 1.99,image:"apple",title: "Natural Red Apple", subtitle: "1kg,Price", navigateTo: AnyView(BellPepperRed()) )
                        .padding(.top,30)
                    Divider()
                        .padding(.horizontal,20)
                        .padding(.top,30)
                    
                    CartItemRepresentation(pricePerItem: 1.99,image:"ginger",title: "Ginger", subtitle: "1kg,Price", navigateTo: AnyView(BellPepperRed()) )
                    Divider()
                        //.padding(.horizontal,20)
                        .padding(.top,30)
                    
                }//VStack
            }//scrollview
        }//ZStack
        
        ZStack{
            Button{
                
            }label:{
                RoundedRectangle(cornerRadius:20)
                    .frame(width:350, height:60)
                    .foregroundColor(.green)
                    .padding(.horizontal,20)
                    //.padding(.bottom,40)
                    .overlay(
                        Text("Go to Checkout")
                            //.padding(.bottom,40)
                            .font(.customfont(.bold,fontSize: 20))
                            .foregroundColor(.black)
                    )
            }.padding(.top, 600)
            
        }
        
        //MainTabView()
    }//someview
}//view

#Preview {
    MyCartView()
}
