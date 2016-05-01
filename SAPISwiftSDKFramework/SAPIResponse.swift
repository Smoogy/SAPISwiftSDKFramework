//
//  SAPIResponse.swift
//  SAPISwiftSDK
//
//  Created by Callan Bush on 28/10/2015.
//  Copyright © 2015 Smoogy. All rights reserved.
//

import Foundation

class SAPIResponse: BaseResponse {
    var results: [Listing]
    var totalResults: Int!
    var currentPage: Int!
    var totalPages: Int!
    var originalQuery: String!
    var executedQuery: String!
    var details: NSArray!
    var count: Int!
    
    override init(json: NSDictionary) {
        self.results = NSArray() as! [Listing]

        super.init(json: json)
        
        for result in json["results"] as! NSArray {
            self.results.append(Listing(json: result as! NSDictionary))
        }
        self.totalResults = json["totalResults"] as! Int
        self.currentPage = json["currentPage"] as! Int
        self.totalPages = json["totalPages"] as! Int
        self.originalQuery = json["originalQuery"] as! String
        self.executedQuery = json["executedQuery"] as! String
        self.details = json["details"] as! NSArray
        self.count = json["count"] as! Int
    }
}