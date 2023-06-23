//
//  ViewControllerTestCase.swift
//  UnitTestsSnapshotReferenceTests
//
//  Created by gustavo.garcia.leite on 23/06/23.
//

import XCTest
@testable import UnitTestsSnapshotReference

final class ViewControllerTestCase: XCTestCase {
    
    var sut: ViewController!
    
    override func setUp() {
        super.setUp()
        sut = ViewController()
        sut.beginAppearanceTransition(true, animated: true)
        sut.endAppearanceTransition()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_loadView_shouldHaveRightViewType() {
        XCTAssertTrue(sut.view is View)
    }
    
}
