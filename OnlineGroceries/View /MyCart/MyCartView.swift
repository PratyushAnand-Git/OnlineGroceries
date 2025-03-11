//import SwiftUI
//
//struct MyCartView: View {
//    @StateObject var forgotVM = ForgotPasswordViewModel.shared
//    
//    var body: some View {
//        
//        ZStack {
//            ScrollView{
//                VStack{
//                    Text("My Cart")
//                        .font(.headline)
//                        .padding(.top,80)
//                    
//                    Divider()
//                        .padding(.top,20)
//                    CartItemRepresentation(pricePerItem: 4.99,image:"bell_pepper_red",title: "Bell Pepper Red", subtitle: "1kg,Price", navigateTo: AnyView(BellPepperRed()) )
//                        .padding(.top,20)
//                    Divider()
//                        .padding(.horizontal,20)
//                        .padding(.top,20)
//                    CartItemRepresentation(pricePerItem: 1.99,image:"banana",title: "Organic Bananas", subtitle: "4pcs,Price", navigateTo: AnyView(BellPepperRed()) )
//                        .padding(.top,30)
//                    Divider()
//                        .padding(.horizontal,20)
//                        .padding(.top,30)
//                    
//                    CartItemRepresentation(pricePerItem: 1.99,image:"ginger",title: "Ginger", subtitle: "1kg,Price", navigateTo: AnyView(BellPepperRed()) )
//                        .padding(.top,30)
//                    Divider()
//                        .padding(.horizontal,20)
//                        .padding(.top,30)
//                    
//                    CartItemRepresentation(pricePerItem: 1.99,image:"apple",title: "Natural Red Apple", subtitle: "1kg,Price", navigateTo: AnyView(BellPepperRed()) )
//                        .padding(.top,30)
//                    Divider()
//                        .padding(.horizontal,20)
//                        .padding(.top,30)
//                    
//                    CartItemRepresentation(pricePerItem: 1.99,image:"ginger",title: "Ginger", subtitle: "1kg,Price", navigateTo: AnyView(BellPepperRed()) )
//                    Divider()
//                        //.padding(.horizontal,20)
//                        .padding(.top,30)
//                    
//                }//VStack
//            }//scrollview
//        }//ZStack
//        
//        ZStack{
//            RoundButton(title: "Go to Checkout") {
//                // Perform service call and after success, show the verification code view
//                forgotVM.serviceCallRequest()
//                withAnimation {
//                    //self.showVerificationView.toggle() // Show verification code view with animation
//                }
//            }
////            Button{
////                
////            }label:{
////                RoundedRectangle(cornerRadius:20)
////                    .frame(width:350, height:60)
////                    .foregroundColor(.green)
////                    .padding(.horizontal,20)
////                    //.padding(.bottom,40)
////                    .overlay(
////                        Text("Go to Checkout")
////                            //.padding(.bottom,40)
////                            .font(.customfont(.bold,fontSize: 20))
////                            .foregroundColor(.black)
////                    )
////            }//.padding(.top, 600)
//            
//        }
//        
//        //MainTabView()
//    }//someview
//}//view
//
//#Preview {
//    MyCartView()
//}
import SwiftUI

struct MyCartView: View {
    @StateObject var forgotVM = ForgotPasswordViewModel.shared
    @State private var showCheckout = false // Track visibility of checkout view
    
    var body: some View {
        
        ZStack {
            ScrollView {
                VStack {
                    Text("My Cart")
                        .font(.headline)
                        .padding(.top, 80)
                    
                    Divider()
                        .padding(.top, 20)
                    
                    // Cart items (same as your current cart items)
                    CartItemRepresentation(pricePerItem: 4.99, image: "bell_pepper_red", title: "Bell Pepper Red", subtitle: "1kg,Price", navigateTo: AnyView(BellPepperRed()))
                        .padding(.top, 20)
                    Divider()
                        .padding(.horizontal, 20)
                        .padding(.top, 20)
                    CartItemRepresentation(pricePerItem: 1.99, image: "banana", title: "Organic Bananas", subtitle: "4pcs,Price", navigateTo: AnyView(BellPepperRed()))
                        .padding(.top, 30)
                    Divider()
                        .padding(.horizontal, 20)
                        .padding(.top, 30)
                    CartItemRepresentation(pricePerItem: 1.99, image: "ginger", title: "Ginger", subtitle: "1kg,Price", navigateTo: AnyView(BellPepperRed()))
                        .padding(.top, 30)
                    Divider()
                        .padding(.horizontal, 20)
                        .padding(.top, 30)
                    CartItemRepresentation(pricePerItem: 1.99, image: "apple", title: "Natural Red Apple", subtitle: "1kg,Price", navigateTo: AnyView(BellPepperRed()))
                        .padding(.top, 30)
                    Divider()
                        .padding(.horizontal, 20)
                        .padding(.top, 30)
                    CartItemRepresentation(pricePerItem: 1.99, image: "ginger", title: "Ginger", subtitle: "1kg,Price", navigateTo: AnyView(BellPepperRed()))
                    Divider()
                        .padding(.top, 30)
                } // VStack
            } // ScrollView
            
            // Checkout Button (with animation trigger)
            VStack {
                Spacer()
                
                RoundButton(title: "Go to Checkout") {
                    // Perform service call and after success, show the verification code view
                    forgotVM.serviceCallRequest()
                    withAnimation {
                        showCheckout.toggle() // Trigger animation to show checkout view
                    }
                }
                .padding(.bottom, 20)
            }
            
            // Checkout View (Animated sliding in from the bottom)
            if showCheckout {
                CheckoutView()
                    .transition(.move(edge: .bottom)) // Slide in from the bottom
                    .animation(.easeInOut(duration: 0.5), value: showCheckout)
            }
        } // ZStack
    }
}

struct CheckoutView: View {
    var body: some View {
        VStack {
            Spacer()
            // Checkout content
            Text("Checkout")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            
            Divider()
            
            // Your checkout content (e.g., summary, price, etc.)
            HStack{
                Text("Delivery")
                    .font(.customfont(.semibold, fontSize: 16))
                    .foregroundColor(.gray)
                Spacer()
                Text("Select Method")
                NavigationLink{
                    
                }label: {
                    Image("1814086_arrow_forward_next_right_icon")
                        .resizable()
                        .frame(width:25, height: 25)
                }
            }
            .padding(.horizontal, 20)
            Divider()
            HStack{
                Text("Payment")
                    .font(.customfont(.semibold, fontSize: 16))
                    .foregroundColor(.gray)
                Spacer()
                Text("Rupee")
                NavigationLink{
                    
                }label: {
                    Image("1814086_arrow_forward_next_right_icon")
                        .resizable()
                        .frame(width:25, height: 25)
                }
            }
            .padding(.horizontal, 20)
            Divider()
            HStack{
                Text("Promo Code")
                    .font(.customfont(.semibold, fontSize: 16))
                    .foregroundColor(.gray)
                Spacer()
                Text("Pick discount")
                NavigationLink{
                    
                }label: {
                    Image("1814086_arrow_forward_next_right_icon")
                        .resizable()
                        .frame(width:25, height: 25)
                }
            }
            .padding(.horizontal, 20)
            Divider()
            HStack{
                Text("Total Cost")
                    .font(.customfont(.semibold, fontSize: 16))
                    .foregroundColor(.gray)
                Spacer()
                Text("$13.97")
                NavigationLink{
                    
                }label: {
                    Image("1814086_arrow_forward_next_right_icon")
                        .resizable()
                        .frame(width:25, height: 25)
                }
            }
            .padding(.horizontal, 20)
            Divider()
            Text("Cart Summary")
                .padding()
            
            // Button to close the checkout view
            Button(action: {
                // You can add logic here to dismiss the checkout view if needed
            }) {
                Text("Place Order")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(10)
            }
            .padding(.bottom, 20)
        }
        .frame(maxWidth: .infinity, maxHeight: 600) // Limit the height to half the screen
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 10)
        .ignoresSafeArea()
        //.padding(.horizontal, 20)
        .padding(.top, 40)
    }
}

#Preview {
    MyCartView()
}
