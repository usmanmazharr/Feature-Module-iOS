//
//  UserProfile.swift
//  Dependencies
//
//  Created by Usman Mazhar on 04/07/2024
//  Copyright © 2024 O3 Interfaces. All rights reserved.
//

import UIKit
import Service

public protocol UserProfileModuleProtocol {
    func userProfileScreen(user: User) -> UIViewController
}

extension Dependencies {
    // Now we can obtain a ChatModule
    public var userProfileModule: UserProfileModuleProtocol {
        return resolve(UserProfileModuleProtocol.self)!
    }
}
