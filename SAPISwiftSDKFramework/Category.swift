//
//  Categories.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 7/03/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation
import ObjectMapper

class Category: Mappable {
    var id: String!
    var name: String!
    var sensitive: Bool?

    required init?(_ map: Map) {
        
    }

    func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        sensitive <- map["sensitive"]
    }
}
