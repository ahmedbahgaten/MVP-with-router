//
//  UsersViewController.swift
//  MVP Test
//
//  Created by AHMED on 6/26/20.
//  Copyright © 2020 AHMED. All rights reserved.
//

import UIKit

class UsersViewController: UIViewController {
    
    var presenter:UsersPresenter?
    var dataSourceAndDelegate:UserDataSourceAndDelegate?{
        didSet{
            dataSourceAndDelegate?.presenter = presenter
            tableView.delegate = dataSourceAndDelegate
            tableView.dataSource = dataSourceAndDelegate
        }
    }
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Configurator.configure(userView: self)
        presenter?.getUsers()
        registerUsersCell()
        // Do any additional setup after loading the view.
    }
    func registerUsersCell() {
        let userCell = UINib(nibName: "UsersTableViewCell", bundle: nil)
        tableView.register(userCell, forCellReuseIdentifier: "userCellID")
    }
    
}
extension UsersViewController:IUsersView{
    func reloadData() {
        tableView.reloadData()
    }
    
    
}

