//
//  SecondaryContact.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 7/03/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation
import ObjectMapper

public class OrderedSecondaryContact: Mappable {
    public var name: String!
    public var contacts: [Contacts]!

    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        name <- map["name"]
        contacts <- map["contacts"]
    }
}
