//
//  Link.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 1/05/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation
import ObjectMapper

public class Link: Mappable {
    public var type: String!
    public var url: String!
    public var displayValue: String!
    public var label: String?
    public var description: String?
    public var logo: String?

    required public init?(_ map: Map) {
        
    }
    
    public func mapping(_ map: Map) {
        type <- map["type"]
        url <- map["url"]
        displayValue <- map["displayValue"]
        label <- map["label"]
        description <- map["description"]
        logo <- map["logo"]
    }
}
