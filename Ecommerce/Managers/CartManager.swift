//
//  CartManager.swift
//  Ecommerce
//
//  Created by Adrian Inculet on 11.02.2026.
//

import Foundation
import SwiftUI

@Observable
class CartManager {
    
    var productsInCart: [ProductInCart] = []
    var addToCartAlert = false
    
    var displayTotalCartQuantity: Int {
        productsInCart.reduce(0) { $0 + $1.quantity }
    }
    
    func addToCart(product: Product) {
        if let indexOfProductInCart = productsInCart.firstIndex(where: { $0.id == product.id}) {
            let currentQuantity = productsInCart[indexOfProductInCart].quantity
            let newQuantity = currentQuantity + 1
            let updatedProductInCart = ProductInCart(product: product, quantity: newQuantity)
            productsInCart[indexOfProductInCart] = updatedProductInCart
        } else {
            productsInCart.append(ProductInCart(product: product, quantity: 1))
        }
    }
    
    func removeFromCart(product: Product) {
        if let indexOfProductInCart = productsInCart.firstIndex(where: { $0.id == product.id}) {
            let currentQuantity = productsInCart[indexOfProductInCart].quantity
            if currentQuantity > 1 {
                let newQuantity = currentQuantity - 1
                let updatedProductInCart = ProductInCart(product: product, quantity: newQuantity)
                productsInCart[indexOfProductInCart] = updatedProductInCart
            } else {
                productsInCart.remove(at: indexOfProductInCart)
            }
        }
    }
    
}
