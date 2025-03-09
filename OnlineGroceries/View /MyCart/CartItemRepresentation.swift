import SwiftUI

struct CartItemRepresentation: View {
    @State private var quantity: Int = 1
    let pricePerItem:Double
    //var size: CGFloat = 0.0
    var image: String = ""
    var title: String = ""
    var subtitle: String = ""//
   // var price: String = ""
    var navigateTo: AnyView
    
    var body: some View {
        HStack{
            NavigationLink{
              navigateTo
            }label: {
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(width:90,height:90)
                    .font(.customfont(.bold,fontSize: 12))
                    .padding(.leading,15)
            }
            
            VStack{
                HStack{
                    Text(title)
                        //.padding(.trailing,60)
                        .font(.customfont(.bold,fontSize: 20))
                        .lineLimit(1)
                       // .padding(.trailing)
                        //.padding(.leading,2)
                    
                    Spacer()
                Image("close")
                        .resizable()
                        .frame(width:15, height:15)
                        .foregroundColor(.black.opacity(0.8))
                }.padding(.horizontal,30)
                
                Text(subtitle)
                    .padding(.trailing,180)
                    .font(.customfont(.semibold,fontSize: 12))
                    .foregroundColor(.black.opacity(0.6))
                
                
                //
                HStack{
                    HStack{
                        
                        Button(action:{
                            if quantity > 1{
                                quantity -= 1
                            }
                        }) {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                                .fill(Color.white)
                                .frame(width: 35 , height: 35)
                                .overlay(
                            Image("8687942_ic_fluent_subtract_regular_icon")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.green)
                            )
                        }
                        
                                Text("\(quantity)")
                                //.font(.title)
                                    .font(.customfont(.bold, fontSize: 15))
                        
                        Button(action: {
                            quantity += 1
                        }) {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                                .fill(Color.white)
                                .frame(width: 35 , height: 35)
                                .overlay(
                            Image("4115237_add_plus_icon")
                            //(systemName : "plus.circle.fill")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.green)
                            )
                        }
                        
                        
                        Spacer()
                    }//HStack2//
                    .padding(.horizontal)
                    
                   Text(String(format: "$%.2f", totalPrice))
                        .foregroundColor(.black)
                        .font(.customfont(.bold, fontSize:17))
                }//HStack1
                .padding(.horizontal,20)
            }//VStack
            
        }//HStack0
    }//someview
        //
        var totalPrice: Double {
            return pricePerItem * Double(quantity)
        }//
}//view

#Preview {
    HStack{
        CartItemRepresentation(pricePerItem: 4.99,image:"bell_pepper_red",title: "Bell Pepper Red", subtitle: "1kg,Price", navigateTo: AnyView(BellPepperRed()) )
        
    }
}
