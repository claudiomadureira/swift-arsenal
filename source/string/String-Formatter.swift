//
//  String-Formatter.swift
//  
//
//  Created by Claudio Madureira Silva Filho on 12/12/19.
//

import Foundation


public extension String {
    
    /// Filter just numbers and join them.
    /// Examples:
    ///     `Brazilian document`: "012.345.678-90" -> "01234567890"
    ///     `Formatted phone`: "(31) 9 9999-8888" -> "31999998888"
    ///
    /// - Returns: Just numbers in the String.
    func rawNumbers() -> String {
        return self.compactMap { Int(String($0)) }.map { String($0) }.joined()
    }
    
    /// Format a brazilian document to it's representative way.
    /// Example:
    ///     "01234567890" -> "012.345.678-90"
    ///
    /// - Returns: Formatted brazilian document if the string contains the right amount of number characters to do so.
    func formattedBrazilianDocument() -> String? {
        let numbers = self.compactMap { Int(String($0)) }
        guard numbers.count == 11 else { return nil }
        var cpf = numbers.map { String($0) }
        cpf.insert("-", at: 9)
        cpf.insert(".", at: 9 - 3)
        cpf.insert(".", at: 9 - 3 - 3)
        return cpf.joined()
    }
    
}
