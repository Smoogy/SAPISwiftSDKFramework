//
//  Categories.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 7/03/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation
import ObjectMapper

public class Category: Mappable {
    public var id: String!
    public var name: String!
    public var sensitive: Bool?

    required public init?(_ map: Map) {
        
    }

    public func mapping(_ map: Map) {
        id <- map["id"]
        name <- map["name"]
        sensitive <- map["sensitive"]
    }
}
