//
//  UserDetailsViewController.swift
//  MVP Test
//
//  Created by AHMED on 6/26/20.
//  Copyright © 2020 AHMED. All rights reserved.
//

import UIKit

class UserDetailsViewController: UIViewController {
    var presenter:IUserDetailsPresenter?
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }
    
}
extension UserDetailsViewController:IUserDetailsView{
    func displayEmail(email: String) {
        emailLabel.text = email
    }
    
    func displayAddress(address: String) {
        addressLabel.text = address
    }
    
    func displayName(name: String) {
        userNameLabel.text = name
    }
    
    
}
