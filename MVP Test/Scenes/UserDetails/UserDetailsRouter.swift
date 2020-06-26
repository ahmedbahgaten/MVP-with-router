//
//  UserDetailsRouter.swift
//  MVP Test
//
//  Created by AHMED on 6/26/20.
//  Copyright © 2020 AHMED. All rights reserved.
//

import Foundation
import UIKit
protocol IUserDetailsRouter {
    
}
class UserDetailsRouter {
    
    class func createUserDetailsVC(user:User) -> UIViewController {
        let userDetails = UserDetailsViewController()
        let router = UserDetailsRouter(view: userDetails)
        let presenter = UserDetailsPresenter(view: userDetails, router: router, user: user)
        userDetails.presenter = presenter
        return userDetails
    }
    
    
    private var view:IUserDetailsView?
    init(view:IUserDetailsView) {
        self.view = view
    }
}
extension UserDetailsRouter:IUserDetailsRouter{
    
}
