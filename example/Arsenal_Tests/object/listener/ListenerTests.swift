//
//  StringFormatterTests.swift
//
//  Created by Claudio Madureira Silva Filho on 1/29/20.
//

import XCTest
import Arsenal

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
