//
//  CardProductView.swift
//  FurnitureShop
//
//  Created by Yohan on 2024-06-18.
//

import SwiftUI

struct CardProductView: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    
    var body: some View {
        HStack(spacing: 20) {
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode:.fit)
                .frame(width: 70)
                .cornerRadius(9)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(product.name)
                    .bold()
                
                Text("$ \(product.price)")
                    .bold()
            }
            .padding()
            
            Spacer()
            
            Image(systemName: "trash")
                .foregroundColor(.red)
                .onTapGesture {
                    cartManager.removeFromClient(product: product)
                }
        }
        .padding(.horizontal)
        .background(Color("Secondary"))
        .cornerRadius(12)
        .frame(width: .infinity, alignment: .leading)
        .padding()
    }
}

#Preview {
    CardProductView(product: productList[1])
        .environmentObject(CartManager())
}
