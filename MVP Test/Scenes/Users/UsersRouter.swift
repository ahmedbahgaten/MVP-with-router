//
//  UsersRouter.swift
//  MVP Test
//
//  Created by AHMED on 6/26/20.
//  Copyright © 2020 AHMED. All rights reserved.
//

import Foundation
import UIKit
protocol IUsersRouter {
    func navigateToUserDetailsScreen(from view: IUsersView?, user: User)
}
class UsersRouter{
    var view:IUsersView?
    init(view:IUsersView) {
        self.view = view
    }
}
extension UsersRouter:IUsersRouter {
    func navigateToUserDetailsScreen(from view: IUsersView?, user: User) {
        let userDetails = UserDetailsViewController()
        UserDetailsConfigurator.configure(userDetails: userDetails, user: user)
        let usersVC = view as? UIViewController
        usersVC?.navigationController?.pushViewController(userDetails, animated: true)
    }
    
    
}
