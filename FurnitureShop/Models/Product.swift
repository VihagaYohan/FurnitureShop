//
//  Product.swift
//  FurnitureShop
//
//  Created by Yohan on 2024-06-17.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var description: String
    var supplier: String
    var price: Int
}

var productList = [
    Product(name: "Leather couch", image: "img_1", description: "sample description", supplier: "IKEA", price: 350)
    Product(name: "Wooden Table", image: "img_1", description: "sample description", supplier: "IKEA", price: 350)
    Product(name: "Sofa Set", image: "img_1", description: "sample description", supplier: "IKEA", price: 350)
    Product(name: "Tables", image: "img_1", description: "sample description", supplier: "IKEA", price: 350)
    Product(name: "Chairs", image: "img_1", description: "sample description", supplier: "IKEA", price: 350)
    Product(name: "Dining table", image: "img_1", description: "sample description", supplier: "IKEA", price: 350)
]
