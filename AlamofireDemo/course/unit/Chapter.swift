//
//  Chapter.swift
//  AlamofireDemo
//
//  Created by Criss Angel on 12/18/17.
//  Copyright © 2017 Criss Angel. All rights reserved.
//

import Foundation

struct Chapter: Codable {
    var id: String?
    var title: String?
    var videos: [Video]?
    var resources: [Resource]?
    var quizzes: [Quiz]?
}
