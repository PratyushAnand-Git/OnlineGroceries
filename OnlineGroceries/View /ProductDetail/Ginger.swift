//
//  Ginger.swift
//  OnlineGroceries
//
//  Created by student on 20/02/25.
//

import SwiftUI

struct Ginger: View {
    var body: some View {
        ProductDetailView(size: 250, pricePerItem: "$4.49", image: "ginger" ,title: "Ginger", text: "Apples Are Nutritious. Apples May Be Good For Weight Loss\nApples May Be Good For Your Heart. As Part Of A Healthful\nAnd Varied Diet",navigateBackTo: AnyView(HomeView()))
    }
}

#Preview {
    Ginger()
}
