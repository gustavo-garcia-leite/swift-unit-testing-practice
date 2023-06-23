//
//  CalculatorModel.swift
//  UnitTestsPractice
//
//  Created by gustavo.garcia.leite on 23/06/23.
//

protocol CalculatorModelProtocol {
    func sum(valueA: Int, valueB: Int) -> Int
    func subtract(valueA: Int, valueB: Int) -> Int
    func multiply(valueA: Int, valueB: Int) -> Int
    func divide(valueA: Int, valueB: Int) -> Int
}

final class CalculatorModel: CalculatorModelProtocol {

    func sum(valueA: Int, valueB: Int) -> Int {
        return valueA + valueB
    }
    
    func subtract(valueA: Int, valueB: Int) -> Int {
        return valueA - valueB
    }
    
    func multiply(valueA: Int, valueB: Int) -> Int {
        return valueA * valueB
    }
    
    func divide(valueA: Int, valueB: Int) -> Int {
        return valueA/valueB
    }
    
}
