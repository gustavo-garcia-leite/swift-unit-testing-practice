//
//  CheckoutModelTestCase.swift
//  UnitTestsReferenceTests
//
//  Created by gustavo.garcia.leite on 23/06/23.
//

import XCTest
@testable import UnitTestsReference

final class CheckoutModelTestCase: XCTestCase {
    
    var sut: CheckoutModel!
    
    override func setUp() {
        super.setUp()
        sut = CheckoutModel()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_calculateTotal_withOfferAndCouponAndDeliveryFee_shouldReturnRightResult() {
        let result: Double = sut.calculateTotal(subTotal: 100, offerPercentage: 0.1, coupon: 10, deliveryFee: 10)
        XCTAssertEqual(result, 70)
    }
    
    func test_calculateTotal_withCouponAndDeliveryFeeAndWithoutOffer_shouldReturnRightResult() {
        let result: Double = sut.calculateTotal(subTotal: 100, offerPercentage: 0, coupon: 10, deliveryFee: 10)
        XCTAssertEqual(result, 80)
    }
    
    func test_calculateTotal_withoutAnyDiscount_shouldReturnRightResult() {
        let result: Double = sut.calculateTotal(subTotal: 100, offerPercentage: 0, coupon: 0, deliveryFee: 0)
        XCTAssertEqual(result, 100)
    }
    
    func test_applyOffer_shouldReturnRightResult() {
        let result: Double = sut.applyOffer(total: 100, offerPercentage: 0.1)
        XCTAssertEqual(result, 90)
    }
    
    func test_applyDiscount_withValueLessThanTheTotal_shouldReturnRightResult() {
        let result: Double = sut.applyDiscount(total: 100, discount: 50)
        XCTAssertEqual(result, 50)
    }
    
    func test_applyDiscount_withValueGreaterThanTheTotal_shouldReturnRightResult() {
        let result: Double = sut.applyDiscount(total: 100, discount: 150)
        XCTAssertEqual(result, 0)
    }
    
}
