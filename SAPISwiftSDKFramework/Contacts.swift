//
//  Contacts.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 7/03/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation
import ObjectMapper

public class Contacts: Mappable {
    public var type: String!
    public var value: String!
    public var description: String?
    
    required public init?(_ map: Map) {
        
    }

    public func mapping(_ map: Map) {
        type <- map["type"]
        value <- map["value"]
        description <- map["description"]
    }
}
