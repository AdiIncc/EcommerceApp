//
//  PaymentButton.swift
//  Ecommerce
//
//  Created by Adrian Inculet on 11.02.2026.
//

import Foundation
import SwiftUI
import PassKit

struct PaymentButton: UIViewRepresentable {
    
    let button = PKPaymentButton(paymentButtonType: .checkout, paymentButtonStyle: .automatic)
    var action: () -> Void
    
    func makeUIView(context: Context) -> UIView {
        return button
    }
    
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(button: button, action: action)
    }
    
    class Coordinator: NSObject {
        var action: () -> Void
        
        init(button: PKPaymentButton ,action: @escaping () -> Void) {
            self.action = action
            super.init()
            button.addTarget(self, action: #selector(callBack), for: .touchUpInside)
        }
        
        @objc func callBack() {
            action()
        }
        
        
    }
    
}
