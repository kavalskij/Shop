//
//  Storage.swift
//  Shop
//
//  Created by kirill lukyanov on 29.09.16.
//  Copyright © 2016 home. All rights reserved.
//

import Foundation



class Storage {
    static let instance = Storage() // singleton
    private var products = [Product]()
    
    class func isProductAvailable(productId: String) -> Bool {
        for product in instance.products {
            if product.productId == productId {
                return true
            }
        }
        return false
    }
    
    func addProduct(product: Product) {
        products.append(product)
}
    
    func removeProduct(productId: String) {
        for i in 0 ..< products.count {
            if products[i].productId == productId {
                products.remove(at: i)
                break
            }
        }
    }
    
    
    class func productById(productId: String) -> Product? {
        for product in instance.products {
            if product.productId == productId {
                return product
            }
        }
        return nil
    }
}
