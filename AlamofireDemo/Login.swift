//
//  Login.swift
//  AlamofireDemo
//
//  Created by Criss Angel on 12/19/17.
//  Copyright © 2017 Criss Angel. All rights reserved.
//

import Foundation

struct Login: Codable {
    var access_token: String?
    var refresh_token: String?
    var token_type: String?
    var scope: String?
    var user: User?
    var userId: String?
}
