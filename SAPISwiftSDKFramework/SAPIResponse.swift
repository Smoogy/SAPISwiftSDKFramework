//
//  SAPIResponse.swift
//  SAPISwiftSDK
//
//  Created by Callan Bush on 28/10/2015.
//  Copyright © 2015 Smoogy. All rights reserved.
//

import Foundation
import ObjectMapper

public class SAPIResponse: BaseResponse {
    public var results = [Listing]()
    public var totalResults: Int!
    public var currentPage: Int!
    public var totalPages: Int!
    public var originalQuery: String!
    public var executedQuery: String!
    public var details: NSArray!
    public var count: Int!

    required public init?(_ map: Map) {
        super.init(map)
    }
    
    override public func mapping(_ map: Map) {
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
