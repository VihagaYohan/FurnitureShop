//
//  CartPage.swift
//  FurnitureShop
//
//  Created by Yohan on 2024-06-17.
//

import SwiftUI

struct CartPage: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        ScrollView{
            if cartManager.products.count > 0 {
                ForEach(cartManager.products, id:\.id){ product in
                    CardProductView(product: product)
                }
                
                HStack{
                    Text("Your total is ")
                    Spacer()
                    Text("\(cartManager.total).00")
                        .bold()
                }
                .padding()
            } else {
                Text("There are not items in cart")
                    .bold()
            }
        }
        .navigationTitle("My Cart")
        .padding(.top)
    }
}

#Preview {
    CartPage()
        .environmentObject(CartManager())
}
