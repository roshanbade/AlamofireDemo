//
//  Course.swift
//  AlamofireDemo
//
//  Created by Criss Angel on 12/18/17.
//  Copyright © 2017 Criss Angel. All rights reserved.
//

import Foundation

struct Course: Codable {
    var id: String?
    var title: String?
    var description: String?
    var price: Double?
    var faculty: String?
    var courseNumber: String?
    var instructorDetails: String?
    var introductionVideoUrl: String?
    var teachers: [User]?
    var units: [Unit]?
    var duration: Double?
    var totalVideos: Int?
    var totalResources: Int?
    var totalQuizzes: Int?
    var totalUnits: Int?
    var totalChapters: Int?
    var requirements: [String]?
    var organization: String?
    var studentEnrolled: Double?
    var difficulty: String?
    var reviews: [String]?
    var tags: [String]?
    var type: String?
    var companyIds: [String]?
    var stageOneCompvare: Bool?
    var stageTwoCompvare: Bool?
    var stageThreeCompvare: Bool?
    var createdDate: CLong?
    var modifiedDate: CLong?
    var published: Bool?
}
