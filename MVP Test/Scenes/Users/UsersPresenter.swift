//
//  UsersPresenter.swift
//  MVP Test
//
//  Created by AHMED on 6/26/20.
//  Copyright © 2020 AHMED. All rights reserved.
//

import Foundation
protocol IUsersPresenter {
    func getUsers()
    func getUsersCount() -> Int
    func configure(cell:UsersTableViewCell,index:Int)
    func didSelecteRow(at index:Int)
    
}
protocol IUsersView:class {
    func reloadData()
}
class UsersPresenter {
    private weak var view:IUsersView?
    private var router:IUsersRouter?
    private var users = [User]()
    
    init(view:IUsersView,router:IUsersRouter) {
        self.view = view
        self.router = router
    }
}
extension UsersPresenter:IUsersPresenter {
    func didSelecteRow(at index: Int) {
        router?.navigateToUserDetailsScreen(from: view, user: users[index])
    }
    
    func configure(cell: UsersTableViewCell, index: Int) {
        let user = users[index]
        cell.displayName(name: user.name)
        cell.displayEmail(email: user.email)
        cell.displayAddress(address: "\(user.address.street) \(user.address.suite)")
    }
    
    
    func getUsersCount() -> Int {
        return users.count
    }
    
    func getUsers() {
        Service.getUsers {[weak self] (users, err) in
            if let err = err {
                print("Error has occured",err.localizedDescription)
            }else {
                guard let self = self else {return}
                guard let users = users else {return}
                self.users = users
                self.view?.reloadData()
            }
        }
    }
    
    
}
