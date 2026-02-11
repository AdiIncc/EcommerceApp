//
//  ProductInCart.swift
//  Ecommerce
//
//  Created by Adrian Inculet on 11.02.2026.
//

import Foundation
import SwiftUI

struct ProductInCart: Identifiable {
    
    var id: String {
        product.id
    }
    let product: Product
    var quantity: Int
    
}
