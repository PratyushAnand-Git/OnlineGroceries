import SwiftUI

struct ContentBar: View {
    @State private var quantity: Int = 1
    let pricePerItem: Double = 4.99
    
    
    var body: some View {
        HStack{
            HStack{
                
                Button(action:{
                    if quantity > 1{
                        quantity -= 1
                    }
                }) {
                    Image("8687942_ic_fluent_subtract_regular_icon")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.green)
                    
                }
                
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                    .fill(Color.white)
                    .frame(width: 35, height: 35)
                    .overlay(
                        Text("\(quantity)")
                            //.font(.title)
                            .font(.customfont(.bold, fontSize: 20))
                            //.padding(.horizontal, 10)
                    )//.padding(.leading,20)
                
                Button(action: {
                    quantity += 1
                }) {
                    Image("4115237_add_plus_icon")
                    //(systemName : "plus.circle.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.green)
                    
                }
                
                
                Spacer()
            }//.padding(.horizontal)
           
            
            Text(String(format: "$%.2f", totalPrice))
                .font(.title)
                .foregroundColor(.black)
                //.padding(.trailing,20)
        }
        //.padding()
        .padding(.horizontal)
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


