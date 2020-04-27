//
//  ListenerManagerTests.swift
//  SwiftArsenalTests
//
//  Created by Claudio Madureira Silva Filho on 1/29/20.
//  Copyright © 2020 Claudio Madureira Silva Filho. All rights reserved.
//

import XCTest
import Arsenal

class ListenerManagerTests: XCTestCase {
    
    var value: Int = 0
    
    let manager: ListenerManager<Int> = .init()
    
    var listener0: Listener<Int>?
    var listener1: Listener<Int>?
    
    func testListenerManagerMemoryManagement() {
        self.value = -1
        self.listener0 = .init(handler: { [weak self] value in
            self?.value = value
        })
        self.manager.bind(self.listener0!)
        self.manager.emit(0)
        XCTAssertEqual(self.value, 0)
        self.listener0 = nil
        self.manager.emit(1)
        XCTAssertEqual(self.value, 0)
    }
    
    func testAvoidingDuplicatingSameListener() {
        self.value = -1
        self.listener0 = .init(handler: { [weak self] value in
            self?.value += value
        })
        self.manager.bind(self.listener0!)
        self.manager.emit(0)
        XCTAssertEqual(self.value, -1)
        self.manager.bind(self.listener0!)
        self.manager.emit(1)
        XCTAssertEqual(self.value, 0)
    }
    
    func testEmittingToAllListeners() {
        self.value = -1
        self.listener0 = .init(handler: { [weak self] value in
            self?.value += value
        })
        self.listener1 = .init(handler: { [weak self] value in
            self?.value += 2 * value
        })
        self.manager.bind(self.listener0!)
        self.manager.bind(self.listener1!)
        self.manager.emit(0)
        XCTAssertEqual(self.value, -1)
        self.manager.emit(1)
        XCTAssertEqual(self.value, 2)
    }
    
}

