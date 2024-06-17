//
//  ProductCardView.swift
//  FurnitureShop
//
//  Created by Yohan on 2024-06-17.
//

import SwiftUI

struct ProductCardView: View {
    // defining global state
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    var body: some View {
        ZStack{
            Color("Secondary")
            
            ZStack(alignment: .bottomTrailing) {
                VStack(alignment: .leading){
                    Image(product.image)
                        .resizable()
                        .frame(width: 175, height: 160)
                        .cornerRadius(12)
                    
                    Text(product.name)
                        .font(.headline)
                        .foregroundColor(.black)
                        .padding(.vertical, 1)
                    
                    Text(product.supplier)
                        .foregroundColor(.gray)
                        .font(.caption)
                        .padding(.vertical, 0.5)
                    
                    Text("$\(product.price)")
                        .foregroundColor(.black)
                        .bold()
                }
                Button{
                    cartManager.addToCart(product: product)
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .foregroundColor(Color("Primary"))
                        .frame(width: 35, height: 35)
                        .padding(.trailing)
                }
            }
            .frame(width: 185, height: 260)
            .cornerRadius(15)
        }
    }
}

#Preview {
    ProductCardView(product: productList[1])
        .environmentObject(CartManager())
}
