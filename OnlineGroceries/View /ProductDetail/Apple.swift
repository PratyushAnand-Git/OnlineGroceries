//
//  AppleView.swift
//  OnlineGroceries
//
//  Created by student on 20/02/25.
//

import SwiftUI

struct Apple: View {
    var body: some View {
        ProductDetailView(size: 350, pricePerItem: "$4.49", image: "apple" ,title: "Natural Red Apple", text: "Apples Are Nutritious. Apples May Be Good For Weight Loss\nApples May Be Good For Your Heart. As Part Of A Healthful\nAnd Varied Diet",navigateBackTo: AnyView(HomeView()))
    }
}

#Preview {
    Apple()
}
