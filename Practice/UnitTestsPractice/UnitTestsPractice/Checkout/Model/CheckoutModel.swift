//
//  CheckoutModel.swift
//  UnitTestsPractice
//
//  Created by gustavo.garcia.leite on 23/06/23.
//

protocol CheckoutModelProtocol {
    func calculateTotal(subTotal: Double,
                        offerPercentage: Double,
                        coupon: Double,
                        deliveryFee: Double) -> Double
}

final class CheckoutModel: CheckoutModelProtocol {
    
    func calculateTotal(subTotal: Double, offerPercentage: Double, coupon: Double, deliveryFee: Double) -> Double {
        var total: Double = .zero
        
        total = subTotal * (1.0 - offerPercentage)
        total -= coupon
        total += deliveryFee
        
        return total
    }
    
}
