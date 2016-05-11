//
//  Review.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 11/05/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation
import ObjectMapper

class Review: BaseReview {
    var text: String!
    var reviewTimestamp: String!
    var reviewerName: String?
    var reviewerAvatarUrl: String?
    var rating: Int?
    
    required init?(_ map: Map) {
        super.init(map)
    }
    
    override func mapping(map: Map) {
        super.mapping(map)

        text <- map["text"]
        reviewTimestamp <- map["reviewTimestamp"]
        reviewerName <- map["reviewerName"]
        reviewerAvatarUrl <- map["reviewerAvatarUrl"]
        rating <- map["rating"]
    }
}