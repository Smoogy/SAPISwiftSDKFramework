//
//  BaseReview.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 11/05/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation
import ObjectMapper

public class BaseReview: Mappable {
    public var namespace: String!
    public var ratingImageUrl: String?
    public var ratingSmallImageUrl: String?
    
    required public init?(_ map: Map) {

    }

    public func mapping(map: Map) {
        namespace <- map["namespace"]
        ratingImageUrl <- map["ratingImageUrl"]
        ratingSmallImageUrl <- map["ratingSmallImageUrl"]        
    }
}