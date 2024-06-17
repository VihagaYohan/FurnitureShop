//
//  CartManager.swift
//  FurnitureShop
//
//  Created by Yohan on 2024-06-17.
//

import SwiftUI

class CartManager: ObservableObject {
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0
    
    func addToCart(product: Product) {
        products.append(product)
        total += product.price
    }
    
    func removeFromClient(product: Product) {
        products = products.filter{$0.id != product.id}
        total -= product.price
    }
}

