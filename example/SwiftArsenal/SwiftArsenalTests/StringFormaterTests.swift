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
        let document: String = "012.345.678-90"
        XCTAssertEqual(document.rawNumbers(), "01234567890")
    }
    
    func testRawNumbersAppliedToPersonName() {
        let name: String = "Claudio Madureira Silva Filho"
        XCTAssertEqual(name.rawNumbers(), "")
    }
    
    func testRawNumbersAppliedToDate() {
        let date: String = "1995-04-10"
        XCTAssertEqual(date.rawNumbers(), "19950410")
    }
    
    // MARK: - Method `FormattedCPF`
    
    func testFormattedCPFOnExpectedNumberLength() {
        let cleanDocument: String = "01234567890"
        XCTAssertEqual(cleanDocument.formattedCPF(), "012.345.678-90")
        let formattedDocument: String = "012.345.678-90"
        XCTAssertEqual(formattedDocument.formattedCPF(), "012.345.678-90")
    }
    
    func testFormattedCPFOnUnexpectedNumberLength() {
        let example1: String = "012345678901"
        XCTAssertEqual(example1.formattedCPF(), nil)
        let example2: String = "0123456789"
        XCTAssertEqual(example2.formattedCPF(), nil)
        let example3: String = "012345678"
        XCTAssertEqual(example3.formattedCPF(), nil)
        let example4: String = "01234567"
        XCTAssertEqual(example4.formattedCPF(), nil)
        let example5: String = "0123456"
        XCTAssertEqual(example5.formattedCPF(), nil)
        // It continues for any length that's different from 11.
    }
    

}
