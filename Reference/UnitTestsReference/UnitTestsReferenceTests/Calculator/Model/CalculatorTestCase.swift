//
//  CalculatorModelTestCase.swift
//  UnitTestsReferenceTests
//
//  Created by gustavo.garcia.leite on 23/06/23.
//

import XCTest
@testable import UnitTestsReference

final class CalculatorModelTestCase: XCTestCase {
    
    var sut: CalculatorModel!
    
    override func setUp() {
        super.setUp()
        sut = CalculatorModel()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_sum_shouldReturnRightResult() {
        let result: Int = sut.sum(valueA: 10, valueB: 10)
        XCTAssertEqual(result, 20)
    }
    
    func test_subtract_shouldReturnRightResult() {
        let result: Int = sut.subtract(valueA: 10, valueB: 10)
        XCTAssertEqual(result, 0)
    }
    
    func test_multiply_shouldReturnRightResult() {
        let result: Int = sut.multiply(valueA: 10, valueB: 10)
        XCTAssertEqual(result, 100)
    }
    
    func test_divide_shouldReturnRightResult() {
        let result: Int = sut.divide(valueA: 10, valueB: 10)
        XCTAssertEqual(result, 1)
    }
    
}
