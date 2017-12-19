//
//  User.swift
//  AlamofireDemo
//
//  Created by Criss Angel on 12/18/17.
//  Copyright © 2017 Criss Angel. All rights reserved.
//

import Foundation

struct User: Codable {
    var id: String?
    var firstName: String?
    var lastName: String?
    var email: String?
    var joinDate: CLong?
    var companyId: String?
    var modifiedDate: CLong?
    var coursesEnrolled: [String]?
    var coursesCompleted: [String]?
    var coursesInProgress: [String]?
    var teachers: [String]?
    var roles: [String]?
    var authorities: [Authority]?
    var username: String?
    var enabled: Bool?
    var accountNonLocked: Bool?
    var credentialsNonExpired: Bool?
    var accountNonExpired: Bool?
}
