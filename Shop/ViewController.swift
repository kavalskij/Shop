//
//  ViewController.swift
//  Shop
//
//  Created by kirill lukyanov on 29.09.16.
//  Copyright © 2016 home. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let productToy = Product(productId: "PRODUCTID_TOY", name: "SuperToy", price: 38.72)
        Storage.instance.addProduct(product: productToy)
        
      
        // customer
        var wallet = 200.00
        Cashbox.trySell(productId: "PRODUCTID_TOY", wallet: &wallet)
        Cashbox.trySell(productId: "PRODUCTID_TOY", wallet: &wallet)
        let result: (Result: Bool, Error: String?) = Cashbox.trySell(productId: "PRODUCTID_TOY", wallet: &wallet)
        
        if result.Error != nil {
            print(result.Error!)
        }
        print("Remaining money: \(wallet)")
        

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

