import SwiftUI

struct TabButton: View {
    @State var title: String
    @State var icon: String
    var isSelect: Bool
    var didSelect: (() -> Void)
    
    var body: some View {
        Button {
            withAnimation(.easeInOut) {
                didSelect()
            }
        } label: {
            VStack(spacing: 4) {
                Image(systemName: icon)
                    //.font(.system(size: 22))
                    .environment(\.symbolVariants, isSelect ? .fill : .none)
                    .foregroundColor(isSelect ? .primaryApp : .black)
                    
                
                Text(title)
                    .font(.customfont(.semibold, fontSize: 12))
                    .foregroundColor(isSelect ? .primaryApp : .black)
                   
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity)
    }
}

// Preview
struct TabButton_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
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
        .padding()
    }
}

//struct TabButton: View {
//let title: String
//let imageName: String
//let isSelected: Bool
//let action: () ->Void
//var body: some View {
//    Button(action: action){
//        VStack{
//            Image(systemName: imageName)
//                .foregroundColor(isSelected ? .green : .black)
//
//            Text(title)
//                .foregroundColor(isSelected ? .green : .black)
//
//        }.padding()
//    }
//}
//}

/*import SwiftUI

struct TabButton: View {
    @State var title: String
    @State var icon: String  // This is the name of your custom image or SF Symbol
    var isSelect: Bool
    var didSelect: (() -> Void)
    
    // Helper function to return the appropriate image view
    private func getIcon() -> some View {
        // Check if the icon is a custom image or SF Symbol
        if icon == "favouriteIcon" {
            return AnyView(Image("favouriteIcon")  // Custom image from asset catalog
                .resizable()
                .scaledToFit()
                .frame(width: 22, height: 22)  // Adjust the size as needed
                .foregroundColor(isSelect ? .primaryApp : .black)
            .tint(isSelect ? .primaryApp : .black))  // Apply tint here (only iOS 15+)
        } else {
            return AnyView(Image(systemName: icon)  // Default SF Symbol
                .environment(\.symbolVariants, isSelect ? .fill : .none)
                .foregroundColor(isSelect ? .primaryApp : .black))
        }
    }
    
    var body: some View {
        Button {
            withAnimation(.easeInOut) {
                didSelect()
            }
        } label: {
            VStack(spacing: 4) {
                getIcon()  // Call the helper function to return the appropriate image
                
                Text(title)
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundColor(isSelect ? .primaryApp : .black)
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity)
    }
}

// Preview
struct TabButton_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            TabButton(title: "Shop", icon: "storefront", isSelect: false) {
                print("Shop tapped")
            }
            
            TabButton(title: "Explore", icon: "magnifyingglass", isSelect: false) {
                print("Explore tapped")
            }
            
            TabButton(title: "Cart", icon: "cart", isSelect: true) {
                print("Cart tapped")
            }
            
            TabButton(title: "Favorite", icon: "favouriteIcon", isSelect: true) {
                print("Favorite tapped")
            }
            
            TabButton(title: "Account", icon: "person.circle", isSelect: true) {
                print("Account tapped")
            }
        }
        .padding()
    }
}
*/
