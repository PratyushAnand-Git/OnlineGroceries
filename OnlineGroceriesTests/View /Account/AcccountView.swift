import SwiftUI

struct ProfileView: View {
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

    var body: some View {
        NavigationView {
            VStack {
                // Profile Header
                VStack {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .padding(.top, 50)
                    Text("User Name")
                        .font(.headline)
                        .padding(.bottom, 20)
                }

                List(options, id: \.self) { option in
                    HStack {
                        Image(systemName: "circle") // Replace with appropriate icons
                            .foregroundColor(.gray)
                        Text(option)
                            .accessibilityIdentifier("profileCell_\(option)")
                    }
                }
                .listStyle(PlainListStyle())

                Button(action: {
                    print("Log Out Tapped!")
                    // Add logout logic here
                }) {
                    Text("Log Out")
                        .foregroundColor(.red)
                }
                .accessibilityIdentifier("logoutButton")
                .padding(.bottom, 20)
            }
            .navigationBarTitle("Profile")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
