//
//  Service.swift
//  MVP Test
//
//  Created by AHMED on 6/26/20.
//  Copyright © 2020 AHMED. All rights reserved.
//

import Foundation
import Alamofire
class Service {
    static func getUsers(completionHandler:@escaping (([User]?,Error?) -> Void)) {
        Alamofire.request("https://jsonplaceholder.typicode.com/users", method: .get).responseJSON { (response) in
                switch response.result {
                case .success:
                guard let responseData = response.data else {return}
                do {
                let decoder = JSONDecoder()
                let userData = try decoder.decode([User].self, from: responseData)
                completionHandler(userData,nil)
                } catch {
                completionHandler(nil,error)
                print("Whoops, an error occured: \(error)")
                }
                case.failure(let error):
                completionHandler (nil,error)
                
                }
                
            }
        }
}
