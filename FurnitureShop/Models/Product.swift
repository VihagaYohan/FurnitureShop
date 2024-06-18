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
    var width: String
    var height: String
    var diameter: String
}

var productList = [
    Product(name: "Leather couch", image: "img_1", description: "sample description", supplier: "IKEA", price: 350, width: "200 cm", height: "135 cm", diameter: "105 cm"),
    Product(name: "Wooden Table", image: "img_2", description: "sample description", supplier: "IKEA", price: 350, width: "200 cm", height: "135 cm", diameter: "105 cm"),
    Product(name: "Sofa Set", image: "img_3", description: "sample description", supplier: "IKEA", price: 350, width: "200 cm", height: "135 cm", diameter: "105 cm"),
    Product(name: "Tables", image: "img_4", description: "sample description", supplier: "IKEA", price: 350, width: "200 cm", height: "135 cm", diameter: "105 cm"),
    Product(name: "Chairs", image: "img_5", description: "sample description", supplier: "IKEA", price: 350, width: "200 cm", height: "135 cm", diameter: "105 cm"),
    Product(name: "Dining table", image: "img_1", description: "sample description", supplier: "IKEA", price: 350, width: "200 cm", height: "135 cm", diameter: "105 cm")
]
