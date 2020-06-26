//
//  UserDetailsPresenter.swift
//  MVP Test
//
//  Created by AHMED on 6/26/20.
//  Copyright © 2020 AHMED. All rights reserved.
//

import Foundation

protocol IUserDetailsPresenter {
    func viewDidLoad()
}
protocol IUserDetailsView:class {
    func displayName(name:String)
    func displayEmail(email:String)
    func displayAddress(address:String)
}
class UserDetailsPresenter {
    private weak var view:IUserDetailsView?
    private var router:IUserDetailsRouter?
    var user:User?
    init(view:IUserDetailsView,router:IUserDetailsRouter,user:User) {
        self.view = view
        self.router = router
        self.user = user
    }
}
extension UserDetailsPresenter:IUserDetailsPresenter {
    func viewDidLoad() {
        view?.displayName(name: user?.name ?? "")
        view?.displayEmail(email: user?.email ?? "")
        view?.displayAddress(address: "\(user?.address.street ?? "") \(user?.address.suite ?? "")")
    }
    
    
    
}
