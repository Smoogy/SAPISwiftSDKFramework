//
//  SAPIResponse.swift
//  SAPISwiftSDK
//
//  Created by Callan Bush on 28/10/2015.
//  Copyright © 2015 Smoogy. All rights reserved.
//

import Foundation
import ObjectMapper

class SAPIResponse: BaseResponse {
    var results = [Listing]()
    var totalResults: Int!
    var currentPage: Int!
    var totalPages: Int!
    var originalQuery: String!
    var executedQuery: String!
    var details: NSArray!
    var count: Int!

    required init?(_ map: Map) {
        super.init(map)
    }
    
    override func mapping(map: Map) {
        super.mapping(map)
        
        results <- map["results"]
        totalResults <- map["totalResults"]
        currentPage <- map["currentPage"]
        totalPages <- map["totalPages"]
        originalQuery <- map["originalQuery"]
        executedQuery <- map["executedQuery"]
        details <- map["details"]
        count <- map["count"]
    }
}