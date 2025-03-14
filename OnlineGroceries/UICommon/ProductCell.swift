//
//  ProductCell.swift
//  OnlineGroceriesSwiftUI
//
//  Created by CodeForAny on 03/08/23.
//

import SwiftUI
import SDWebImageSwiftUI

/*struct ProductCell: View {
    @State var pObj: ProductModel = ProductModel(dict: [:])
    @State var width:Double = 180.0
    var didAddCart: ( ()->() )?
    
    
    var body: some View {
        NavigationLink {
            //ProductDetailView(detailVM:  ProductDetailViewModel(prodObj: pObj) )
        } label: {
            VStack{
                
                WebImage(url: URL(string: pObj.image ))
                    .resizable()
                    .indicator(.activity) // Activity Indicator
                    .transition(.fade(duration: 0.5))
                    .scaledToFit()
                    .frame(width: 100, height: 80)
                
                Spacer()
                
                Text(pObj.name)
                    .font(.customfont(.bold, fontSize: 16))
                    .foregroundColor(.primaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                
                Text("\(pObj.unitValue)\(pObj.unitName), price")
                    .font(.customfont(.medium, fontSize: 14))
                    .foregroundColor(.secondaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                
                Spacer()
                
                HStack{
                    Text("$\(pObj.offerPrice ?? pObj.price, specifier: "%.2f" )")
                        .font(.customfont(.semibold, fontSize: 18))
                        .foregroundColor(.primaryText)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    
                    Spacer()
                    
                    Button {
                        
                        didAddCart?()
                    } label: {
                        Image("add_btn")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 15, height: 15)
                    }
                    .frame(width: 40, height: 40)
                    .background( Color.primaryApp)
                    .cornerRadius(15)
                    
                    
                }
                
            }
            .padding(15)
            .frame(width: width, height: 230)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(  Color.placeholder.opacity(0.5), lineWidth: 1)
            )
        }
        
    }
}

struct ProductCell_Previews: PreviewProvider {
    static var previews: some View {
        ProductCell(pObj: ProductModel(dict:[
            "prod_id": 5,
            "cat_id": 1,
            "brand_id": 1,
            "type_id": 1,
            "name": "Organic Banana",
            "detail": "banana, fruit of the genus Musa, of the family Musaceae, one of the most important fruit crops of the world. The banana is grown in the tropics, and, though it is most widely consumed in those regions, it is valued worldwide for its flavour, nutritional value, and availability throughout the year",
            "unit_name": "pcs",
            "unit_value": "7",
            "nutrition_weight": "200g",
            "price": 2.99,
            "image": "http://localhost:3001/img/product/202307310947354735xuruflIucc.png",
            "cat_name": "Frash Fruits & Vegetable",
            "type_name": "Pulses",
            "is_fav": 1,
            "avg_rating": 0
        ])) {
            
        }
    }
}*/

struct ProductCell: View {
    let imageName: String
    let title: String
    let quantity: String
    let price: String
    
    var body: some View{
        VStack(alignment: .leading){
            
            RoundedRectangle(cornerRadius: 25)
                .stroke(Color.gray.opacity(0.3), lineWidth: 2)
                .fill(Color.white)
                .frame(width: 152, height: 227)
                .overlay(
                    VStack{Spacer()
                        Image(imageName)
                            .resizable()
                            .scaledToFit()
                            .padding(.leading,25)
                            .padding(.trailing, 25)
                            .padding(.bottom,10)
                        Text(title)
                            .lineLimit(1)
                            .font(.customfont(.bold, fontSize: 17.49))
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                            .padding(.leading,7)
                            .padding(.trailing, 7)
                            .font(.title)
                        
                        Text(quantity)
                            .font(.customfont(.semibold, fontSize: 12))
                            .padding(.trailing,57)
                            .foregroundColor(.black.opacity(0.5))
                        Spacer()
                        HStack{
                            
                            Text(price)
                                .font(.subheadline)
                                .fontWeight(.bold)
                                .padding(.leading, 15)
                                //.padding(.bottom,3)
                            Spacer()
                            Button(action: {}) {
                                Image(systemName: "plus.square.fill")
                                    .foregroundColor(.green)
                                    .padding(.trailing,15)
                                   // .padding(.bottom,10)
                            }
                        }
                        .padding(.bottom,15)
                    }
                )}
        
    }
}
struct ProductCell_Previews: PreviewProvider {
    static var previews: some View {
        ProductCell(imageName: "bananas", title: "Organic Bananas", quantity: "7pcs, Price/g", price: "$4.99")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

