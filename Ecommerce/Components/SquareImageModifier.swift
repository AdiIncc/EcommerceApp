//
//  SquareImageModifier.swift
//  Ecommerce
//
//  Created by Adrian Inculet on 11.02.2026.
//

import Foundation
import SwiftUI

extension Image {
    func squareImageStyle() -> some View {
        self
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 70, height: 70)
    }
}

