//
//  ProductGridViewModel.swift
//  Ecommerce
//
//  Created by Adrian Inculet on 10.02.2026.
//

import Foundation
import SwiftUI

@Observable
class ProductGridViewModel {
    
    let filter: ProductFilter
    
    init(filter: ProductFilter) {
        self.filter = filter
    }
    
    var products: [Product] {
        switch filter {
        case .all:
            return ProductsClient.fetchProducts()
        case .isFeatured:
            return ProductsClient.fetchProducts().filter({ $0.isFeatured })
        case .highlyRated:
            return ProductsClient.fetchProducts().filter({ $0.rating > 4 })
        }
    }
    
}
