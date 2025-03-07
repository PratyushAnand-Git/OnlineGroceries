import SwiftUI

struct AccountView: View {
    let options = [
        "Orders",
        "My Details",
        "Delivery Address",
        "Payment Methods",
        "Promo Code",
        "Notifications",
        "Help",
        "About"
    ]
    
    // Array of custom asset image names corresponding to options
    let icons = [
        "order",      // Orders
        "mydetail",    // My Details
        "a_delivery_address",  // Delivery Address
        "paymenth_methods",// Payment Methods
        "a_promocode",       // Promo Code
        "a_noitification",      // Notifications
        "a_help",  // Help
        "a_about"       // About
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                // Profile Header
                HStack {
                    Spacer()
                    Image(systemName: "person.circle") // Custom image from assets
                        .resizable()
                        .frame(width: 50, height: 50)
                    VStack{
                        HStack{
                            Text("User Name")
                                .font(.headline)
                            NavigationLink {
                                // Edit profile action here
                            } label: {
                                Image("pencilIcon") // Custom image for pencil icon
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width:20, height:25)
                                    .foregroundColor(.green)
                            }
                        }
                        
                        Text("Anand2450@gmail,com")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                            .lineLimit(1)
                        
                    }
                    .padding(.leading,10)
                }
                .padding(.trailing, 160)
                
                Divider()

                List(options.indices, id: \.self) { index in
                    HStack {
                        Image(self.icons[index]) // Use the custom asset images
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(.gray)
                        Text(self.options[index])
                            .font(.body)
                    }
                }
                .listStyle(PlainListStyle())

                Button(action: {
                    print("Log Out Tapped!")
                    // Add logout logic here
                }) {
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 350, height: 70)
                        .foregroundColor(.black.opacity(0.1))
                        .overlay(
                            HStack{
                                Image("logout")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width:20, height: 20)
                                    .padding(.leading,20)
                                    //.padding(.trailing, 225)
                                Spacer()
                                Text("Log Out")
                                    .foregroundColor(.green)
                                    .padding(.trailing,150)
                            }//.padding(.trailing, 225)
                    )
                }
                .padding(.bottom, 60)
            }
            .navigationBarTitle("Profile")
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
