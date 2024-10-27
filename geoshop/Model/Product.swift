//
//  Product.swift
//  geoshop
//
//  Created by Mac on 22/10/2024.
//

import UIKit


struct Product {
    let image: UIImage
    let name: String
    let description: String
    let price: String
}

let products: [Product] = [
    Product(image: UIImage(named: "category1")!, name: "Category 1", description: "Category 1", price: "4.99"),
    Product(image: UIImage(named: "category2")!, name: "Category 2", description: "Category 2", price: "4.99"),
    Product(image: UIImage(named: "category3")!, name: "Category 3", description: "Category 3", price: "4.99"),
    Product(image: UIImage(named: "category1")!, name: "Category 4", description: "Category 4", price: "4.99"),
    Product(image: UIImage(named: "category3")!, name: "Category 5", description: "Category 5", price: "4.99"),
    Product(image: UIImage(named: "category2")!, name: "Category 6", description: "Category 6", price: "4.99"),
    Product(image: UIImage(named: "category3")!, name: "Category 7", description: "Category 7", price: "4.99"),
]
