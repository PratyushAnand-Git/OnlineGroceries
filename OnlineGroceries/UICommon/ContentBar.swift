import SwiftUI

struct ContentBar: View {
    @State private var quantity: Int = 1
    let pricePerItem: Double = 4.99
    
    
    var body: some View {
        HStack{
            Button(action:{
                if quantity > 1{
                    quantity -= 1
                }
            }) {
                Image("subtack")
                //(systemName: "minus.circle.fill")
                    .frame(width: 30, height: 30)
                    .foregroundColor(.green)
                
            }
            
            Text("\(quantity)")
                .font(.title)
                .padding(.horizontal, 10)
            
            Button(action: {
                quantity += 1
            }) {
                Image("add_button")
                      //(systemName : "plus.circle.fill")
                    .resizable()
                    .frame(width: 90, height: 90)
                    .foregroundColor(.green)
                    
            }
            Spacer()
            
            Text(String(format: "$%.2f", totalPrice))
                .font(.title)
                .foregroundColor(.green)
        }
        .padding()
    }
    
    var totalPrice: Double {
        return pricePerItem * Double(quantity)
    }
}

#Preview {
    ContentBar()
}
/*struct ContentBar_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            ContentBar()
        }
        .padding()
    }
}
*/

