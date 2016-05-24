//
//  ReviewSummary.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 10/05/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation
import ObjectMapper

public class ReviewSummary: BaseReview {
    public var reviewCount: Int!
    public var businessPageUrl: String?
    public var averageRating: Double?
    
    required public init?(_ map: Map) {
        super.init(map)
    }
    
    override public func mapping(map: Map) {
        super.mapping(map)

        reviewCount <- map["reviewCount"]
        businessPageUrl <- map["businessPageUrl"]
        averageRating <- map["averageRating"]
    }
}