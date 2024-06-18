//
//  AppBar.swift
//  FurnitureShop
//
//  Created by Yohan on 2024-06-17.
//

import SwiftUI

struct AppBar: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "location.north.fill")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding(.trailing)
                    
                    Text("Colombo, Sri Lanka")
                        .font(.title2)
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    NavigationLink(destination: CartPage()
                        .environmentObject(cartManager)) {
                        CartButton(numberOfProducts: cartManager.products.count)
                    }
                }
                Text("Find the most \nLuxurious")
                    .font(.largeTitle .bold())
                
                + Text(" Furniture")
                    .font(.largeTitle .bold())
                    .foregroundColor(Color("Primary"))
            }
        }
        .padding()
        .environmentObject(CartManager())
    }
}

#Preview {
    AppBar()
        .environmentObject(CartManager())
}
