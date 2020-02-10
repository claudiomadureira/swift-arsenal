//
//  Extension-Collection.swift
//
//  Created by Claudio Madureira on 19/12/19.
//

import Foundation

public extension Collection {
    
    var hasElements: Bool {
        return !self.isEmpty
    }
    
    subscript(safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
    
}
