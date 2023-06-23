//
//  CheckoutModel.swift
//  UnitTestsReference
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
        
        total = applyOffer(total: subTotal, offerPercentage: offerPercentage)
        total = applyDiscount(total: total, discount: coupon)
        total = applyDiscount(total: total, discount: deliveryFee)
        
        return total
    }
    
    func applyOffer(total: Double, offerPercentage: Double) -> Double {
        return total * (1.0 - offerPercentage)
    }
    
    func applyDiscount(total: Double, discount: Double) -> Double {
        if (total - discount) >= .zero {
            return total - discount
        } else {
            return .zero
        }
    }
    
}
