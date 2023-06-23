//
//  ViewTestCase.swift
//  UnitTestsSnapshotReferenceTests
//
//  Created by gustavo.garcia.leite on 23/06/23.
//

import XCTest
import SnapshotTesting
@testable import UnitTestsSnapshotReference

final class ViewTestCase: XCTestCase {
    
    var sut: View!
    
    override func setUp() {
        super.setUp()
        let viewSize: CGSize = UIScreen.main.bounds.size
        sut = View(frame: .init(origin: .zero, size: viewSize))
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_view_shouldValidLayout() {
        if let message = verifySnapshot(matching: sut, as: .image, record: isRecording) {
            XCTFail(message)
        }
    }
    
}
