//
//  Configurator.swift
//  MVP Test
//
//  Created by AHMED on 6/26/20.
//  Copyright © 2020 AHMED. All rights reserved.
//

import Foundation
class Configurator {
    static func configure(userView:UsersViewController) {
        let router = UsersRouter(view: userView)
        let presenter = UsersPresenter(view: userView, router: router)
        userView.presenter = presenter
        userView.dataSourceAndDelegate = UserDataSourceAndDelegate()
        
    }
}
