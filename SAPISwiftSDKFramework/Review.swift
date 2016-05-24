//
//  Review.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 11/05/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation
import ObjectMapper

public class Review: BaseReview {
    public var text: String!
    public var reviewTimestamp: String!
    public var reviewerName: String?
    public var reviewerAvatarUrl: String?
    public var rating: Int?
    
    required public init?(_ map: Map) {
        super.init(map)
    }
    
    override public func mapping(map: Map) {
        super.mapping(map)

        text <- map["text"]
        reviewTimestamp <- map["reviewTimestamp"]
        reviewerName <- map["reviewerName"]
        reviewerAvatarUrl <- map["reviewerAvatarUrl"]
        rating <- map["rating"]
    }
}