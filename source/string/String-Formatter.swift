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
    
    /// Format a physical person brazilian document to it's representative way.
    /// Example:
    ///     "01234567890" -> "012.345.678-90"
    ///
    /// - Returns: Formatted brazilian document if the string contains the right amount of number characters to do so.
    func formattedCPF() -> String? {
        let numbers = self.compactMap { Int(String($0)) }
        guard numbers.count == 11 else { return nil }
        var cpf = numbers.map { String($0) }
        cpf.insert("-", at: 9)
        cpf.insert(".", at: 9 - 3)
        cpf.insert(".", at: 9 - 3 - 3)
        return cpf.joined()
    }
    
    /// Format a legal person brazilian document to it's representative way.
    /// Example:
    ///     "12345678000123" -> "12.345.678/0001-23"
    ///
    /// - Returns: Formatted legal person brazilian document if the string contains the right amount of number characters to do so.
    func formattedCNPJ() -> String? {
        let numbers = self.compactMap { Int(String($0)) }
        guard numbers.count == 14 else { return nil }
        var cnpj = numbers.map { String($0) }
        cnpj.insert("-", at: 14 - 2)
        cnpj.insert("/", at: 14 - 2 - 4)
        cnpj.insert(".", at: 14 - 2 - 4 - 3)
        cnpj.insert(".", at: 14 - 2 - 4 - 3 - 3)
        return cnpj.joined()
    }
    
    /// Format a brazilian zipcode to it's representative way.
    /// Example:
    ///     "35400000" -> "35400-000"
    ///
    /// - Returns: Formatted brazilian zipcode if the string contains the right amount of number characters to do so.
    func formattedZipcode() -> String {
        let numbers = self.compactMap { Int(String($0)) }
        guard numbers.count == 8 else { return nil }
        var zipcode = numbers.map { String($0) }
        zipcode.insert("-", at: 8 - 3)
        return zipcode.joined()
    }

    
}
