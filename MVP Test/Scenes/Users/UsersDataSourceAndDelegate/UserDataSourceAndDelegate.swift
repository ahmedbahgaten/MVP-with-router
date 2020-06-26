//
//  UserDataSourceAndDelegate.swift
//  MVP Test
//
//  Created by AHMED on 6/26/20.
//  Copyright © 2020 AHMED. All rights reserved.
//

import UIKit

class UserDataSourceAndDelegate: NSObject,UITableViewDelegate,UITableViewDataSource {
    var presenter:UsersPresenter?
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        presenter?.getUsersCount() ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let userCell = tableView.dequeueReusableCell(withIdentifier: "userCellID", for: indexPath) as! UsersTableViewCell
        presenter?.configure(cell: userCell, index: indexPath.row)
        return userCell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter?.didSelecteRow(at: indexPath.row)
    }

}
