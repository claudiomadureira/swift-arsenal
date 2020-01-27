//
//  StringFormaterTests.swift
//  SwiftArsenalTests
//
//  Created by Claudio Madureira Silva Filho on 1/27/20.
//  Copyright © 2020 Claudio Madureira Silva Filho. All rights reserved.
//

import XCTest
@testable import SwiftArsenal

class StringFormatterTests: XCTestCase {

    // MARK: - Method `RawNumbers`
    
    func testRawNumbersAppliedToPhone() {
        let phone: String = "(31) 9 8424-8008"
        XCTAssertEqual(phone.rawNumbers(), "31984248008")
    }
    
    func testRawNumbersAppliedToBrazilianDocument() {
        let phone: String = "012.345.678-90"
        XCTAssertEqual(phone.rawNumbers(), "01234567890")
    }
    
    func testRawNumbersAppliedToPersonName() {
        let phone: String = "Claudio Madureira Silva Filho"
        XCTAssertEqual(phone.rawNumbers(), "")
    }
    
    func testRawNumbersAppliedToDate() {
        let phone: String = "1995-04-10"
        XCTAssertEqual(phone.rawNumbers(), "19950410")
    }

}
