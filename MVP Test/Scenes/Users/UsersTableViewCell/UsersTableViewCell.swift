//
//  UsersTableViewCell.swift
//  MVP Test
//
//  Created by AHMED on 6/26/20.
//  Copyright © 2020 AHMED. All rights reserved.
//

import UIKit

class UsersTableViewCell: UITableViewCell {

    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func displayName(name:String){
        firstNameLabel.text = name
    }
    func displayEmail(email:String){
        emailLabel.text = email
    }
    func displayAddress(address:String){
        addressLabel.text = address
    }
    
}
