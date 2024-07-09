//
//  Dependencies.swift
//  Dependencies
//
//  Created by Usman Mazhar on 17/06/2024
//  Copyright © 2024 O3 Interfaces. All rights reserved.
//

import Utils

public final class Dependencies: DependencyManager {
    // We expose this to every modules via a singleton
    public static let shared = Dependencies()
}
