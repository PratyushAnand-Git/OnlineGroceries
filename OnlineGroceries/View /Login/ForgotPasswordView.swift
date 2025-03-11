////import SwiftUI
////
////struct ForgotPasswordView: View {
////    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
////    @StateObject var forgotVM = ForgotPasswordViewModel.shared;
////    
////    
////    var body: some View {
////        ZStack {
////            Image("bottom_bg")
////            .resizable()
////            .scaledToFill()
////            .frame(width: .screenWidth, height: .screenHeight)
////            
////            
////            VStack{
////                
////                
////                
////                Image("color_logo")
////                    .resizable()
////                    .scaledToFit()
////                    .frame(width: 40)
////                    .padding(.bottom, .screenWidth * 0.1)
////                
////                
////                Text("Forgot Password")
////                    .font(.customfont(.bold, fontSize: 25))
////                    .foregroundColor(.primaryText)
////                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
////                    .padding(.bottom, 4)
////                
////                Text("Enter your email")
////                    .font(.customfont(.semibold, fontSize: 16))
////                    .foregroundColor(.secondaryText)
////                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
////                    .padding(.bottom, .screenWidth * 0.1)
////                
////                LineTextField( title: "Email", placholder: "Enter your email address", txt: $forgotVM.txtEmail, keyboardType: .emailAddress)
////                    .padding(.bottom, .screenWidth * 0.07)
////                
////               // LineTextField( title: "Enter Verification Code", placholder: "Enter verification code", txt: $forgotVM.txtEmail, keyboardType: .emailAddress)
////                    //.padding(.bottom, .screenWidth * 0.07)
////                
////                Text("A verification code will be sent to your email ")
////                    .font(.customfont(.semibold, fontSize: 16))
////                    .foregroundColor(.secondaryText)
////                
////                
////                RoundButton(title: "Submit") {
////                    forgotVM.serviceCallRequest()
////                }
////                .padding(.bottom, .screenWidth * 0.05)
////                
////                
////                
////                
////                Spacer()
////            }
////            .padding(.top, .topInsets + 64)
////            .padding(.horizontal, 20)
////            .padding(.bottom, .bottomInsets)
////            
////            
////            VStack {
////                    
////                HStack {
////                    Button {
////                        mode.wrappedValue.dismiss()
////                    } label: {
////                        Image("back")
////                            .resizable()
////                            .scaledToFit()
////                            .frame(width: 20, height: 20)
////                    }
////                    
////                    Spacer()
////
////                }
////                
////                Spacer()
////                
////            }
////            .padding(.top, .topInsets)
////            .padding(.horizontal, 20)
////            
////            
////            
////        }
////        .alert(isPresented: $forgotVM.showError) {
////                
////            Alert(title: Text(Globs.AppName), message: Text( forgotVM.errorMessage ), dismissButton: .default(Text("Ok")))
////        }
////        .background( NavigationLink(destination: OTPView(), isActive: $forgotVM.showVerify,  label: {
////            EmptyView()
////        }) )
////        .background( NavigationLink(destination: ForgotPasswordSetView(), isActive: $forgotVM.showSetPassword,  label: {
////            EmptyView()
////        }) )
////        .background(Color.white)
////        .navigationTitle("")
////        .navigationBarBackButtonHidden(true)
////        .navigationBarHidden(true)
////        .ignoresSafeArea()
////        
////    }
////}
////
////struct ForgotPasswordView_Previews: PreviewProvider {
////    static var previews: some View {
////        
////        NavigationView {
////            ForgotPasswordView()
////        }
////
////        
////    }
////}
//import SwiftUI
//
//struct ForgotPasswordView: View {
//    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
//    @StateObject var forgotVM = ForgotPasswordViewModel.shared
//    @State private var showVerificationView = false // State to trigger the sliding transition
//
//    var body: some View {
//        ZStack {
//            // Background image
//            Image("bottom_bg")
//                .resizable()
//                .scaledToFill()
//                .frame(width: .screenWidth, height: .screenHeight)
//
//            VStack {
//                // First part of the UI: Unchanged until "Forgot Password" is done
//                Image("color_logo")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 40)
//                    .padding(.bottom, .screenWidth * 0.1)
//
//                Text("Forgot Password")
//                    .font(.customfont(.bold, fontSize: 25))
//                    .foregroundColor(.primaryText)
//                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
//                    .padding(.bottom, 4)
//
//                Text("Enter your email")
//                    .font(.customfont(.semibold, fontSize: 16))
//                    .foregroundColor(.secondaryText)
//                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
//                    .padding(.bottom, .screenWidth * 0.1)
//
//                LineTextField(title: "Email", placholder: "Enter your email address", txt: $forgotVM.txtEmail, keyboardType: .emailAddress)
//                    .padding(.bottom, .screenWidth * 0.07)
//
//                Text("A verification code will be sent to your email")
//                    .font(.customfont(.semibold, fontSize: 16))
//                    .foregroundColor(.secondaryText)
//
//                RoundButton(title: "Submit") {
//                    // Perform service call and after success, show the verification code view
//                    forgotVM.serviceCallRequest()
//                    withAnimation {
//                        self.showVerificationView.toggle() // Show verification code view with animation
//                    }
//                }
//                .padding(.bottom, .screenWidth * 0.05)
//
//                Spacer()
//            }
//            .padding(.top, .topInsets + 64)
//            .padding(.horizontal, 20)
//            .padding(.bottom, .bottomInsets)
//
//            VStack {
//                // Back Button
//                HStack {
//                    Button {
//                        mode.wrappedValue.dismiss()
//                    } label: {
//                        Image("back")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: 20, height: 20)
//                    }
//                    Spacer()
//                }
//                Spacer()
//            }
//            .padding(.top, .topInsets)
//            .padding(.horizontal, 20)
//
//            // The Verification Code Section that slides in
//            if showVerificationView {
//                // Pass the forgotVM as an observed object
//                VerificationCodeView(forgotVM: forgotVM) // Now passing the forgotVM
//                    .transition(.move(edge: .trailing)) // Apply the sliding effect
//                    .animation(.easeInOut(duration: 0.5), value: showVerificationView) // Animation for the transition
//            }
//        }
//        .background(Color.white)
//        .navigationTitle("")
//        .navigationBarBackButtonHidden(true)
//        .navigationBarHidden(true)
//        .ignoresSafeArea()
//    }
//}
//
//struct VerificationCodeView: View {
//    @ObservedObject var forgotVM: ForgotPasswordViewModel // ObservedObject for forgotVM
//
//    var body: some View {
//        VStack {
//            LineTextField(title: "Enter Verification Code", placholder: "Enter Verification Code", txt: $forgotVM.txtEmail, keyboardType: .default) // Use .default for keyboardType
//                .textContentType(.password) // Set textContentType to .password
//                .padding(.bottom, .screenWidth * 0.07)
//            
//            // Add additional fields and UI for the verification code
//            Text("A verification code have been sent to your email")
//                .font(.customfont(.semibold, fontSize: 16))
//                .foregroundColor(.secondaryText)
//            
//            HStack{
//                Text("Not recieved code")
//                    .font(.customfont(.semibold, fontSize: 12))
//                    .foregroundColor(.secondaryText)
//                NavigationLink{
//                    //
//                }label: {
//                    Text("Resend Code")
//                        .foregroundColor(.green)
//                        .font(.customfont(.semibold, fontSize: 12))
//                }
//            }.padding(.leading, 120)
//
//            RoundButton(title: "Submit") {
//                // Perform service call and after success, show the verification code view
//                forgotVM.serviceCallRequest()
//                withAnimation {
//                    //self.showVerificationView.toggle() // Show verification code view with animation
//                }
//            }
//            //.padding(.bottom, .screenWidth * 0.05)
//        }//VStack
//        .padding()
//        .background(Color.white)
//        .cornerRadius(10)
//        //.shadow(radius: 10)
//        .ignoresSafeArea()
//    }//some view
//}//view
//
//struct ForgotPasswordView_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationView {
//            ForgotPasswordView()
//        }
//    }
//}
// 
import SwiftUI

struct ForgotPasswordView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @StateObject var forgotVM = ForgotPasswordViewModel.shared
    @State private var showVerificationView = false // State to trigger the sliding transition

    var body: some View {
        ZStack {
            // Background image
            Image("bottom_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)

            VStack {
                // First part of the UI: Unchanged until "Forgot Password" is done
                Image("color_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40)
                    .padding(.bottom, .screenWidth * 0.1)

                Text("Forgot Password")
                    .font(.customfont(.bold, fontSize: 25))
                    .foregroundColor(.primaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 4)

                Text("Enter your email")
                    .font(.customfont(.semibold, fontSize: 16))
                    .foregroundColor(.secondaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, .screenWidth * 0.1)

                LineTextField(title: "Email", placholder: "Enter your email address", txt: $forgotVM.txtEmail, keyboardType: .emailAddress)
                    .padding(.bottom, .screenWidth * 0.07)

                Text("A verification code will be sent to your email")
                    .font(.customfont(.semibold, fontSize: 16))
                    .foregroundColor(.secondaryText)

                RoundButton(title: "Submit") {
                    // Perform service call and after success, show the verification code view
                    forgotVM.serviceCallRequest()
                    withAnimation {
                        self.showVerificationView.toggle() // Show verification code view with animation
                    }
                }
                .padding(.bottom, .screenWidth * 0.05)

                Spacer()
            }
            .padding(.top, .topInsets + 64)
            .padding(.horizontal, 20)
            .padding(.bottom, .bottomInsets)

            VStack {
                // Back Button
                HStack {
                    Button {
                        mode.wrappedValue.dismiss()
                    } label: {
                        Image("back")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    }
                    Spacer()
                }
                Spacer()
            }
            .padding(.top, .topInsets)
            .padding(.horizontal, 20)

            // The Verification Code Section that slides in
            if showVerificationView {
                // Pass the forgotVM as an observed object
                VerificationCodeView(forgotVM: forgotVM, showVerificationView: $showVerificationView) // Now passing the forgotVM
                    .transition(.move(edge: .trailing)) // Apply the sliding effect
                    .animation(.easeInOut(duration: 0.5), value: showVerificationView) // Animation for the transition
            }
        }
        .background(Color.white)
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
}

struct VerificationCodeView: View {
    @ObservedObject var forgotVM: ForgotPasswordViewModel // ObservedObject for forgotVM
    @Binding var showVerificationView: Bool // Binding to trigger the reload

    var body: some View {
        VStack {
            LineTextField(title: "Enter Verification Code", placholder: "Enter Verification Code", txt: $forgotVM.txtResetCode, keyboardType: .default) // Use .default for keyboardType
                .textContentType(.password) // Set textContentType to .password
                .padding(.bottom, .screenWidth * 0.07)
            
            // Add additional fields and UI for the verification code
            Text("A verification code has been sent to your email")
                .font(.customfont(.semibold, fontSize: 16))
                .foregroundColor(.secondaryText)
            
            HStack {
                Text("Not received code?")
                    .font(.customfont(.semibold, fontSize: 12))
                    .foregroundColor(.secondaryText)
                
                Button(action: {
                    // When Resend Code is tapped, simulate re-sending and reload the verification view
                    withAnimation {
                        // Reset the verification view by toggling the state
                        showVerificationView = false
                    }

                    // Optionally simulate a delay before re-activating the view
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        withAnimation {
                            showVerificationView = true // Reload the verification view with animation
                        }
                    }
                }) {
                    Text("Resend Code")
                        .foregroundColor(.green)
                        .font(.customfont(.semibold, fontSize: 12))
                }
            }
            .padding(.leading, 120)

            RoundButton(title: "Submit") {
                // Perform service call for verification code
                forgotVM.serviceCallRequest()
            }
            .padding(.bottom, .screenWidth * 0.05)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        //.shadow(radius: 10)
        .ignoresSafeArea()
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ForgotPasswordView()
        }
    }
}
