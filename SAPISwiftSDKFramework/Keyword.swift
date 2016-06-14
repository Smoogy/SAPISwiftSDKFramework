//
//  Keywords.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 1/05/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation
import ObjectMapper

public class Keyword: Mappable {
    public var label: String!
    public var values: [String]!

    required public init?(_ map: Map) {
        
    }

    public func mapping(_ map: Map) {
        label <- map["label"]
        values <- map["values"]
    }
}
