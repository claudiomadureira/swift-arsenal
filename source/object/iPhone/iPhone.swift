//
//  iPhone.swift
//  SwiftDebugger
//
//  Created by Claudio Madureira Silva Filho on 4/18/20.
//  Copyright © 2020 Claudio Madureira Silva Filho. All rights reserved.
//

import UIKit

enum iPhone {
    
    case iPhone4
    
    /// Also iPhones 5S and SE.
    case iPhone5
    
    /// Also iPhones 6S, 7, 8 and SE Second Generation
    case iPhone6
    
    /// Also iPhones 6S Plus, 7 Plus and 8 Plus.
    case iPhone6Plus
    
    /// Also iPhones 11
    case iPhoneXR
    
    /// Also iPhones XS and 11 Pro.
    case iPhoneX
    
    /// Also iPhones 11 Pro Max.
    case iPhoneXSMax
    
    /// The current iPhone running the app.
    static var current: iPhone {
        switch UIScreen.main.bounds {
        case Screen.iPhone4:
            return .iPhone4
        case Screen.iPhone5:
            return .iPhone5
        case Screen.iPhone6:
            return .iPhone6
        case Screen.iPhone6Plus:
            return .iPhone6Plus
        case Screen.iPhoneXR:
            return .iPhoneXR
        case Screen.iPhoneX:
            return .iPhoneX
        default:
            return .iPhoneXSMax
        }
    }
    
}
