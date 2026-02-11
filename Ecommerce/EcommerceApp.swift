//
//  EcommerceApp.swift
//  Ecommerce
//
//  Created by Adrian Inculet on 10.02.2026.
//

import SwiftUI

@main
struct EcommerceApp: App {
    
    @State var favoritesManager = FavoritesManager()
    @State var cartManager = CartManager()
    @State var tabManager = TabManager()
    
    var body: some Scene {
        WindowGroup {
            
            TabView(selection: $tabManager.selectedTab) {
                Tab("Home", systemImage: "house.fill", value: .home) {
                    HomeView()
                }
                Tab("Cart", systemImage: "cart.fill", value: .cart) {
                    CartView()
                }
                Tab("Favorites", systemImage: "heart.fill", value: .favorites) {
                    FavoritesView()
                }
            }
            .environment(favoritesManager)
            .environment(cartManager)
            .environment(tabManager)
            .preferredColorScheme(.light)
        }
    }
}
