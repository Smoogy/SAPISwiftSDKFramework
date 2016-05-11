//
//  ReviewSummary.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 10/05/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation
import ObjectMapper

class ReviewSummary: BaseReview {
    var reviewCount: Int!
    var businessPageUrl: String?
    var averageRating: Double?
    
    required init?(_ map: Map) {
        super.init(map)
    }
    
    override func mapping(map: Map) {
        super.mapping(map)

        reviewCount <- map["reviewCount"]
        businessPageUrl <- map["businessPageUrl"]
        averageRating <- map["averageRating"]
    }
}