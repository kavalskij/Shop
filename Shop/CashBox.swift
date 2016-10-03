//
//  CashBox.swift
//  Shop
//
//  Created by kirill lukyanov on 29.09.16.
//  Copyright © 2016 home. All rights reserved.
//

import Foundation



class Cashbox {
    
    class func trySell(productId: String, wallet: inout Double) -> (Bool, String?) {
        
        let product: Product? = Storage.productById(productId: productId)
        // check for existence
        if product == nil {
            return (true, "out of stock")
        }
        
        // check price
        if product!.price <= wallet {
            wallet -= product!.price
            Storage.instance.removeProduct(productId: product!.productId)
            
            return (true, nil)
        }
        return (false, "There is no enough money.")
    }
    
}
