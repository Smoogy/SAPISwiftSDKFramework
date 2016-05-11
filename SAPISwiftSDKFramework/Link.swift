//
//  Link.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 1/05/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation
import ObjectMapper

class Link: Mappable {
    var type: String!
    var url: String!
    var displayValue: String!
    var label: String?
    var description: String?
    var logo: String?

    required init?(_ map: Map) {
        
    }
    
    func mapping(map: Map) {
        type <- map["type"]
        url <- map["url"]
        displayValue <- map["displayValue"]
        label <- map["label"]
        description <- map["description"]
        logo <- map["logo"]
    }
}
