//
//  TwoColumnGrid.swift
//  Ecommerce
//
//  Created by Adrian Inculet on 10.02.2026.
//

import Foundation
import SwiftUI

struct TwoColumnGrid<Content: View>: View {
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    @ViewBuilder var content: () -> Content
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                content()
            }
        }
    }
    
}
