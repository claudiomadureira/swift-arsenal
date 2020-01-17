//
//  ListenerManager.swift
//  Gerencianet-Lite
//
//  Created by Claudio Madureira on 22/11/19.
//  Copyright © 2019 Usemobile. All rights reserved.
//

import UIKit

open class ListenerManager<ListenerValue> {
    
    public typealias CustomListener = Listener<ListenerValue>
    
    class ListenerMemoryManagedWrapper: NSObject {
        weak var listener: CustomListener?
    }
    
    var memoryManagedListeners: Set<ListenerMemoryManagedWrapper> = .init()
    
    public init() {
        
    }
    
    /// Faz a ligação do listener dentro do gerenciador. Caso faça a ligação retorna `true` se não `false`.
    @discardableResult
    public func bind(_ listener: CustomListener) -> Bool {
        for memoryManagedListener in self.memoryManagedListeners {
            if memoryManagedListener.listener == listener {
                return false
            }
        }
        let memoryManagedListener: ListenerMemoryManagedWrapper = .init()
        memoryManagedListener.listener = listener
        self.memoryManagedListeners.insert(memoryManagedListener)
        return true
    }
    
    /// Remove a ligação do listener dentro do gerenciador. Caso remova a ligação retorna `true` se não `false`.
    @discardableResult
    public func unbind(_ listener: CustomListener) -> Bool {
        for memoryManagedListener in self.memoryManagedListeners {
            if memoryManagedListener.listener == listener {
                self.memoryManagedListeners.remove(memoryManagedListener)
                return true
            }
        }
        return false
    }
    
    public func emit(_ value: ListenerValue) {
        for memoryManagedListener in self.memoryManagedListeners {
            if let listener = memoryManagedListener.listener {
                listener.emit(value)
            } else {
                self.memoryManagedListeners.remove(memoryManagedListener)
            }
        }
    }
    
}
