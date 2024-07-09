//
//  User.swift
//  Service
//
//  Created by Usman Mazhar on 04/07/2024
//  Copyright © 2024 O3 Interfaces. All rights reserved.
//

import UIKit

public struct User {
    public let identifier: String
    
    public init(identifier: String) {
        self.identifier = identifier
    }
}

public struct Product {
    public let identifier: String
    
    public init(identifier: String) {
        self.identifier = identifier
    }
}

extension User: CustomDebugStringConvertible {
    public var debugDescription: String {
        return "<User \(identifier)>"
    }
}

extension Product: CustomDebugStringConvertible {
    public var debugDescription: String {
        return "<Product \(identifier)>"
    }
}
