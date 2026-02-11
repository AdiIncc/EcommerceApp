//
//  CartView.swift
//  Ecommerce
//
//  Created by Adrian Inculet on 10.02.2026.
//

import SwiftUI

struct CartView: View {
    
    @Environment(CartManager.self) var cartManager
    
    fileprivate func CartRow(productInCart: ProductInCart) -> some View {
        HStack {
            Image(productInCart.product.image)
                .squareImageStyle()
            VStack(alignment: .leading) {
                Text(productInCart.product.title)
                    .font(.system(size: 15))
                    .padding(.bottom)
                Text(productInCart.product.displayPrice)
                    .font(.system(size: 15))
                Stepper("Quantity: \(productInCart.quantity)") {
                    cartManager.addToCart(product: productInCart.product)
                } onDecrement: {
                    cartManager.removeFromCart(product: productInCart.product)
                }

            }
        }
    }
    
    var body: some View {
        VStack {
            List {
                ForEach(cartManager.productsInCart) { productInCart in
                    CartRow(productInCart: productInCart)
                }
            }
        }
    }
}

#Preview {
    CartView()
        .environment(CartManager())
}
