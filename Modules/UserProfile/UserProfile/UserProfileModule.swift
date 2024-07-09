//
//  UserProfileModule.swift
//  UserProfile
//
//  Created by Usman Mazhar on 17/06/2024
//  Copyright © 2024 O3 Interfaces. All rights reserved.
//

import UIKit
import Dependencies
import Service

public class UserProfileModule: UserProfileModuleProtocol {
    
    public init() {}
    
    public func userProfileScreen(user: User) -> UIViewController {
        return UserProfileViewController(user: user)
    }
}
