//
//  BaseReview.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 11/05/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation
import ObjectMapper

class BaseReview: Mappable {
    var namespace: String!
    var ratingImageUrl: String?
    var ratingSmallImageUrl: String?
    
    required init?(_ map: Map) {

    }

    func mapping(map: Map) {
        namespace <- map["namespace"]
        ratingImageUrl <- map["ratingImageUrl"]
        ratingSmallImageUrl <- map["ratingSmallImageUrl"]        
    }
}