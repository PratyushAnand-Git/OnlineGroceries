//
//  BananaView.swift
//  OnlineGroceries
//
//  Created by student on 20/02/25.
//

import SwiftUI

struct Banana: View {
    var body: some View {
        ProductDetailView(size: 250, pricePerItem: "$4.49", image: "banana" ,title: "Organic Bananas", text: "Bananas Are Nutritious. Bananas May Be Good For Weight Loss Bananas May Be Good For Your Calories Intake. As Part Of A Healthful And Balanced Diet",navigateBackTo: AnyView(HomeView()))
    }
}

#Preview {
    Banana()
}
