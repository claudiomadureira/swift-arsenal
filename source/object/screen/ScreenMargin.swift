//
//  ScreenMargin.swift
//
//  Created by Claudio Madureira Silva Filho on 4/18/20.
//  Copyright © 2020. All rights reserved.
//

import UIKit

/// This contain the respective margin used by status bar and the bottom space on infinite screen iPhones X, XS, XR, XS Max, 11, 11 Pro and 11 Pro Max.
enum ScreenMargin {
    
    static var iPhone4: UIEdgeInsets = UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)
    
    /// Also iPhones 5S and SE.
    static var iPhone5: UIEdgeInsets = UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)
    
    /// Also iPhones 6S, 7, 8 and SE Second Generation.
    static var iPhone6: UIEdgeInsets = UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)
    
    /// Also iPhones 6S Plus, 7 Plus and 8 Plus.
    static var iPhone6Plus: UIEdgeInsets = UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)
    
    /// Also iPhones 11.
    static var iPhoneXR: UIEdgeInsets = UIEdgeInsets(top: 44, left: 0, bottom: 0, right: 34)
    
    /// Also iPhones XS and 11 Pro.
    static var iPhoneX: UIEdgeInsets = UIEdgeInsets(top: 44, left: 0, bottom: 0, right: 34)
    
    /// Also iPhones 11 Pro Max.
    static var iPhoneXSMax: UIEdgeInsets = UIEdgeInsets(top: 44, left: 0, bottom: 0, right: 34)
    
    /// The current iPhone running the app.
    static var current: UIEdgeInsets {
        switch iPhone.current {
        case .iPhone4:
            return self.iPhone5
        case .iPhone5:
            return self.iPhone5
        case .iPhone6:
            return self.iPhone6
        case .iPhone6Plus:
            return self.iPhone6Plus
        case .iPhoneXR:
            return self.iPhoneXR
        case .iPhoneX:
            return self.iPhoneX
        case .iPhoneXSMax:
            return self.iPhoneXSMax
        }
    }
    
}
