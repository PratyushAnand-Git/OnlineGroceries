import SwiftUI

struct ProductDetailView: View {
    @State private var showError: Bool = false
    @State private var quantity: Int = 1
    let pricePerItem: Double = 4.99
    
    var body: some View {
        VStack{
            ScrollView(showsIndicators:false){
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(Color.black.opacity(0.04))
                    .frame(width: 400, height: 350)
                    .cornerRadius(20, corner: [.bottomLeft, .bottomRight])
                    .overlay(
                        VStack{Spacer()
                            
                            HStack{
                                NavigationLink{
                                    
                                } label: {
                                    Image("back")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 20, height: 20)
                                }
                                Spacer()
                                
                                NavigationLink{
                                    
                                } label: {
                                    Image("share")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 20, height: 20)
                                }
                            }
                            .padding(.horizontal,25)
                            .padding(.top,70)
                            
                            Image("apple")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 350,height:350)
                            
                        } //vs
                    )
                
            VStack{
                HStack{
                    Text("Natural Red Apple")
                        .font(.customfont(.bold, fontSize: 25))
                        .foregroundColor(.black)
                    Spacer()
                    
                    HeartButton()
                }.padding(.horizontal)
                
                Text("1kg,Price")
                    .font(.customfont(.semibold, fontSize: 13.49))
                    .foregroundColor(.black.opacity(0.6))
                    .padding(.trailing,310)
                
                Text("ghjh")
                    .font(.customfont(.bold, fontSize: 25))
                    .foregroundColor(.white)
                //Just for spacing
                
                ContentBar()
                
                Text("ghjh")
                    .font(.customfont(.bold, fontSize: 25))
                    .foregroundColor(.white)
                //Just for spacing
                
                
                
                Divider()
                    .frame(width: 350)
                
                HStack{
                    Text("Product Detail")
                        .font(.customfont(.bold,fontSize:17))
                        .padding(.trailing,200)
                    
                    //Spacer()
                    Image("detail_open")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .padding(.trailing,10)
                }//.padding(.horizontal)
                
                Spacer()
                
                Text("Apples Are Nutritious. Apples May Be Good For Weight Loss\nApples May Be Good For Your Heart. As Part Of A Healthful\nAnd Varied Diet")
                    .font(.customfont(.semibold,fontSize: 12))
                    .padding(.horizontal)
                    .padding(.trailing,40)
                    .foregroundColor(.black.opacity(0.6))
                    .multilineTextAlignment((.leading))
                
                Text("Apples May Be Good For Your Heart. As Part Of A Healthful")
                    .font(.customfont(.semibold,fontSize: 12))
                    .padding(.horizontal)
                    .padding(.trailing,45)
                    .foregroundColor(.black.opacity(0.6))
                Text("And Varied Diet")
                    .font(.customfont(.semibold,fontSize: 12))
                    .padding(.horizontal)
                    .padding(.trailing,277)
                    .foregroundColor(.black.opacity(0.6))
                Spacer()
                Divider()
                    .frame(width: 350)
                HStack{
                    Text("Nutritions")
                        .font(.customfont(.bold,fontSize:17))
                    //.padding(.trailing,200)
                        .padding(.leading, 30)
                    Spacer()
                    RoundedRectangle(cornerRadius: 5)
                        .foregroundColor(Color.black.opacity(0.1))
                        .frame(width: 45, height: 20)
                        .overlay(
                            Text("100gr")
                                .foregroundColor(.black.opacity(0.5))
                                .font(.customfont(.bold,fontSize:13))
                            
                        )
                    
                    
                    
                    NavigationLink {
                        //AnyView(destination())
                    } label: {
                        Image("1814086_arrow_forward_next_right_icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 60)
                        
                    }
                    
                }
                Divider()
                
                HStack{
                    Text("Review")
                        .font(.customfont(.bold,fontSize:17))
                    //.padding(.trailing,200)
                        .padding(.leading, 30)
                    Spacer()
                    
                    StarRatingView()
                    
                    
                    
                    NavigationLink {
                        //AnyView(destination())
                    } label: {
                        Image("1814086_arrow_forward_next_right_icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 60)
                        
                    }
                }
                Button(action:{
                    showError = true
                }) {
                    Text("Add To Basket")
                }.font(.customfont(.medium, fontSize: 20))
                    .padding()
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, maxHeight:70)
                    .foregroundColor(.white.opacity(0.9))
                    .background(.green)
                    .cornerRadius(12)
                    .padding(.bottom, 20)
                    .padding(.horizontal )
                    .alert(isPresented: $showError){
                        Alert(title: Text("Error"), message: Text("Server not connected"), dismissButton: .default(Text("OK")))}
                
            }
            .padding(.bottom, 60)
            }//VStack
        }.ignoresSafeArea()
        
    }
}


#Preview {
    ProductDetailView()
}
