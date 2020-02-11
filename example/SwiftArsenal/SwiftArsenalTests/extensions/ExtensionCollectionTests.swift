//
//  ExtensionCollectionTests.swift
//  SwiftArsenalTests
//
//  Created by Claudio Madureira Silva Filho on 2/11/20.
//  Copyright © 2020 Claudio Madureira Silva Filho. All rights reserved.
//

import XCTest
@testable import SwiftArsenal

class ExtensionCollectionTests: XCTestCase {
    
    // MARK: - Method `hasElements`
    
    func testEmptyArray() {
        let array: [Any] = []
        XCTAssertFalse(array.hasElements)
    }
    
    func testEmptyDictionary() {
        let array: [AnyHashable: Any] = [:]
        XCTAssertFalse(array.hasElements)
    }
    
    func testEmptyArrayMeansOppositeOfHasElements() {
        var array: [NSObject] = []
        XCTAssertEqual(array.isEmpty, !array.hasElements)
        array.append(NSObject())
        XCTAssertEqual(array.isEmpty, !array.hasElements)
    }
    
    func testEmptyDictionaryMeansOppositeOfHasElements() {
        var array: [AnyHashable: Any] = [:]
        XCTAssertEqual(array.isEmpty, !array.hasElements)
        array.updateValue(NSObject(), forKey: "key")
        XCTAssertEqual(array.isEmpty, !array.hasElements)
    }
    
    func testNonEmptyArray() {
        let array: [Any] = [NSObject()]
        XCTAssertTrue(array.hasElements)
    }
    
    func testNonEmptyDictionary() {
        let array: [AnyHashable: Any] = ["anything": NSObject()]
        XCTAssertTrue(array.hasElements)
    }
    
    // MARK: - Method `subscript safe`
    
    func testElementInArrayRange() {
        let array: [Any] = [NSObject()]
        XCTAssertNotNil(array[safe: 0])
    }
    
    func testElementOutArrayRange() {
        let array: [Any] = [NSObject()]
        XCTAssertNil(array[safe: 1])
    }
    
}
