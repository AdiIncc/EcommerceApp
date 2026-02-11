//
//  FavoritesView.swift
//  Ecommerce
//
//  Created by Adrian Inculet on 10.02.2026.
//

import SwiftUI

struct FavoritesView: View {
    
    @Environment(FavoritesManager.self) var favoritesManager: FavoritesManager
    
    fileprivate func FavoriteProductRow(product: Product) -> some View {
        HStack {
            Image(product.image)
                .squareImageStyle()
            VStack(alignment: .leading) {
                Text(product.title)
                    .font(.system(size: 15, weight: .semibold))
                    .padding(.bottom, 1)
                Text(product.description)
                    .lineLimit(2)
                    .font(.system(size: 15))
            }
            Button {
                favoritesManager.products.removeAll(where: { $0.id == product.id})
            } label: {
                Image(systemName: "heart.fill")
            }

        }
    }
    
    var body: some View {
        VStack {
            List(favoritesManager.products) { product in
               FavoriteProductRow(product: product)
            }
        }
        .overlay {
            if favoritesManager.products.count == 0 {
                Text("Nothing to see here")
            }
        }
    }
}

#Preview {
    FavoritesView()
        .environment(FavoritesManager())
}
