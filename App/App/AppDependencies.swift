//
//  AppDependencies.swift
//  App
//
//  Created by Usman Mazhar on 17/06/2024
//  Copyright © 2024 O3 Interfaces. All rights reserved.
//

import UIKit
import Dependencies
import Chat
import UserProfile

func setUpDependencies() {
    // register dependencies here
    let dependencies = Dependencies.shared
    
    dependencies.register(ChatModuleProtocol.self) {
        return ChatModule()
    }
    dependencies.register(UserProfileModuleProtocol.self) {
        return UserProfileModule()
    }

}
