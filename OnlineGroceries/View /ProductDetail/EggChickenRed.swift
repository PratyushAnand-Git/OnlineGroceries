//
//  EggChickenRed.swift
//  OnlineGroceries
//
//  Created by student on 20/02/25.
//

import SwiftUI

struct EggChickenRed: View {
    var body: some View {
        ProductDetailView(size: 250, pricePerItem: "$4.49", image: "egg_chicken_red" ,title: "Egg Chicken Red", text: "Apples Are Nutritious. Apples May Be Good For Weight Loss\nApples May Be Good For Your Heart. As Part Of A Healthful\nAnd Varied Diet",navigateBackTo: AnyView(HomeView()))
    }
}

#Preview {
    EggChickenRed()
}
