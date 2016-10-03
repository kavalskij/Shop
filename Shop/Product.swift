//
//  Product.swift
//  Shop
//
//  Created by kirill lukyanov on 29.09.16.
//  Copyright © 2016 home. All rights reserved.
//

import Foundation

class Product {
    let productId: String
    var name: String
    var price: Double
    var broken: Bool
    
    init(productId: String, name: String, price: Double) {
        self.productId = productId
        self.name = name
        self.price = price
        self.broken = true
    }
}
