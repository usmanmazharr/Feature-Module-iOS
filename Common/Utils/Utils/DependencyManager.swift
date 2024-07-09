//
//  DependencyManager.swift
//  Utils
//
//  Created by Usman Mazhar on 04/07/2024
//  Copyright © 2024 O3 Interfaces. All rights reserved.
//

import UIKit

open class DependencyManager {
    fileprivate var factories = [String: Any]()
    
    public init() { }
    
    fileprivate func key<T>(_ type: T.Type) -> String {
        return String(reflecting: type)
    }
    
    public func register<T>(_ type: T.Type, factory: @escaping () -> T?) {
        factories[key(type)] = factory
    }
    
    public func unregister<T>(_ type: T.Type) {
        factories[key(type)] = nil
    }
    
    public func resolve<T>(_ type: T.Type) -> T? {
        guard let factory = factories[key(type)] as? () -> T? else {
            return nil
        }
        return factory()
    }
}
