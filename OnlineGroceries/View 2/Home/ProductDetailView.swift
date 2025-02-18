import SwiftUI

struct ProductDetailView: View {
    var body: some View {
        VStack{
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(Color.green.opacity(0.1))
                    .frame(width: .screenWidth, height: .screenWidth)
                    .cornerRadius(20, corner: [.bottomLeft, .bottomRight])
                    .overlay(
                        VStack{
                            
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
                            .padding(.top,100)
                            .padding(.horizontal,25)
                            
                            Image("apple")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 350,height:350)
                            
                            
                            
                            
                            //.padding(.bottom, 530)
                                .ignoresSafeArea()
                        } //vs
                        
                        
                        
                        
                        
                    )
                    //.padding(.bottom, 570)
                    //.padding(.top,2000)
            Divider()
                .frame(width: 350)
            HStack{
                Text("Natural Red Apple")
                    .font(.customfont(.bold, fontSize: 25))
                    .foregroundColor(.black)
                
                Spacer()
                
                Image("fav")
                    .resizable()
                    .scaledToFit()
                    .frame(width:20,height: 20)
            }.padding(.horizontal)
            //.padding(.bottom,1200)
            
            Text("1kg,Price")
                .font(.customfont(.semibold, fontSize: 13.49))
                .foregroundColor(.black.opacity(0.6))
                .padding(.trailing,310)
            
            HStack{
                
                Button{
                    
                }label:{
                    Image("subtack")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                }
                
                Button{
                    //showError = true
                } label: {
                    Text("1")
                }//.strokeBorder(Color.black,lineWidth:1)
                    .font(.customfont(.medium, fontSize: 20))
                    .padding()
                    .fontWeight(.bold)
                    .frame(maxWidth: 35, maxHeight:35)
                    .foregroundColor(.white.opacity(0.9))
                    .background(.green)
                .cornerRadius(10)
                .padding(.bottom, 20)
                //.alert(isPresented: $showError){
                    //Alert(title: Text("Error"), message: Text("Server not connected"), dismissButton: .default(Text("OK")))}
                //.strokeBorder(Color.black,lineWidth:1)
                
                Button{
                    
                }label:{
                    Image("add_green")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                }
                
                Spacer()
                Text("$4.99")
                    .font(.customfont(.bold, fontSize:18))
            }.padding(.horizontal,30)
            
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
                    //.padding(.leading, 30)
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
            
            
        }//VStack
        .padding(.top,700)
        .padding(.bottom,1100)
        
        
    }
}


#Preview {
    ProductDetailView()
}
