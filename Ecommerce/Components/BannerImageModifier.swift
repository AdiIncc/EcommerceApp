//
//  BannerImageModifier.swift
//  Ecommerce
//
//  Created by Adrian Inculet on 10.02.2026.
//

import Foundation
import SwiftUI

extension Image {
    func bannerImageStyle() -> some View {
        self
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width:UIScreen.main.bounds.width ,height: 250)
            .clipped()
    }
}
