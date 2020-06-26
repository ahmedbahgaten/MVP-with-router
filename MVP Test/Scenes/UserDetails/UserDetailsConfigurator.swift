//
//  UserDetailsConfigurator.swift
//  MVP Test
//
//  Created by AHMED on 6/26/20.
//  Copyright © 2020 AHMED. All rights reserved.
//

import Foundation
class UserDetailsConfigurator{
    static func configure(userDetails:UserDetailsViewController,user:User) {
        let router = UserDetailsRouter(view: userDetails)
        let presenter = UserDetailsPresenter(view: userDetails, router: router, user: user)
        userDetails.presenter = presenter
    }
}
