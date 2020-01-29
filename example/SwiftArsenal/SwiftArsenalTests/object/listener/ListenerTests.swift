//
//  StringFormatterTests.swift
//  SwiftArsenalTests
//
//  Created by Claudio Madureira Silva Filho on 1/29/20.
//  Copyright © 2020 Claudio Madureira Silva Filho. All rights reserved.
//

import XCTest
@testable import SwiftArsenal

class ListenerTests: XCTestCase {
    
    var value: String?
    
    lazy var listener: Listener<String?> = {
        return .init(handler: { [weak self] value in
            self?.value = value
        })
    }()
    
    func testListenerEmiting() {
        self.value = nil
        self.listener.emit("some")
        XCTAssertEqual(self.value, "some")
    }
    
}
