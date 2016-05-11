//
//  Keywords.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 1/05/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation
import ObjectMapper

class Keyword: Mappable {
    var label: String!
    var values: [String]!

    required init?(_ map: Map) {
        
    }

    func mapping(map: Map) {
        label <- map["label"]
        values <- map["values"]
    }
}
