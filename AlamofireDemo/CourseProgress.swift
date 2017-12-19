//
//  CourseProgress.swift
//  AlamofireDemo
//
//  Created by Criss Angel on 12/19/17.
//  Copyright © 2017 Criss Angel. All rights reserved.
//

import Foundation

struct CourseProgress: Codable {
    var id: String?
    var createdDate: CLong?
    var lastModifiedDate: CLong?
    var courseId: String?
    var userId: String?
    var unitProgress: [UnitProgress]?
    var courseProgressPercentage: Double?
    var courseState: CourseState?
}
