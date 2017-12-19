//
//  UnitProgress.swift
//  AlamofireDemo
//
//  Created by Criss Angel on 12/19/17.
//  Copyright © 2017 Criss Angel. All rights reserved.
//

import Foundation

struct UnitProgress: Codable {
    var chapterId: String?
    var unitProgressPercentage: Double?
    var unitId: String?
    var chapterProgress: [ChapterProgress]?
}
