import SwiftUI

struct LoginView: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    // Use simple @State variables for showcasing the UI
    @State private var txtEmail: String = ""
    @State private var txtPassword: String = ""
    @State private var isShowPassword: Bool = false//true
    @State private var showError: Bool = false
    @State private var errorMessage: String = "Invalid email or password."
    
    var body: some View {
        ZStack {
            Image("bottom_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
            
            VStack {
                Image("color_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width:50) //  min(100, UIScreen.main.bounds.width * 0.3)Dynamically scales with screen size
                    .padding(.bottom, .screenWidth * 0.1)
                
                Text("Log in")
                    .font(.customfont(.semibold, fontSize: 26))
                    .foregroundColor(.primaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 4)
                
                Text("Enter your email and password")
                    .font(.customfont(.semibold, fontSize: 16))
                    .foregroundColor(.secondaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, .screenWidth * 0.1)
                
                // TextField for Email
                LineTextField(title: "Email", placholder: "Enter your email address", txt: $txtEmail, keyboardType: .emailAddress)
                    .padding(.bottom, .screenWidth * 0.07)
                
                // SecureField for Password
                LineSecureField(title: "Password", placholder: "Enter your password", txt: $txtPassword, isShowPassword: $isShowPassword)
                    .padding(.bottom, .screenWidth * 0.02)
                
                // Forgot Password Link
                NavigationLink {
                    // ForgotPasswordView()
                } label: {
                    Text("Forgot Password?")
                        .font(.customfont(.medium, fontSize: 14))
                        .foregroundColor(.primaryText)
                }
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                .padding(.bottom, .screenWidth * 0.03)
                
                /*Button(action:{
                    //showError = true
                })*/
                NavigationLink{
                   MainTabView()
                }label: {
                    Text("Log In")
                }.font(.customfont(.medium, fontSize: 20))
                    .padding()
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, maxHeight:70)
                    .foregroundColor(.white.opacity(0.9))
                    .background(.green)
                .cornerRadius(18)
                .padding(.bottom, 20)
               // .alert(isPresented: $showError){
                   // Alert(title: Text("Error"), message: Text("Server not connected"), dismissButton: .default(Text("OK")))}
                
                
                
                //Text(" ")
                    
    
                    HStack {
                        Text("Don't have an account?")
                            .font(.customfont(.semibold, fontSize: 14))
                            .foregroundColor(.primaryText)
                        
                        NavigationLink {
                           SignUpView()
                        } label:{
                            Text("Sign up")
                            .font(.customfont(.semibold, fontSize: 14))
                            .foregroundColor(.primaryApp)
                        }
                    
                }
                Spacer()
            }
            .padding(.top, .topInsets + 64)
            .padding(.horizontal, 20)
            .padding(.bottom, .bottomInsets)
            
            VStack {
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
        }
      
        .background(Color.white)
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LoginView()
        }
    }
}

