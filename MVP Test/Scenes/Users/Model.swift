//
//  Model.swift
//  MVP Test
//
//  Created by AHMED on 6/26/20.
//  Copyright © 2020 AHMED. All rights reserved.
//

import Foundation

struct User:Codable {
    let name:String
    let email:String
    let address:Address
    
    struct Address:Codable {
        let street:String
        let suite:String
    }
}
