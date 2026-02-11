//
//  PrimaryButtonStyle.swift
//  Ecommerce
//
//  Created by Adrian Inculet on 10.02.2026.
//

import Foundation
import SwiftUI

struct PrimaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .font(.system(size: 15, weight: .bold))
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity)
            .frame(height: 45)
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}
