//
//  Contacts.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 7/03/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation
import ObjectMapper

class Contacts: Mappable {
    var type: String!
    var value: String!
    var description: String?
    
    required init?(_ map: Map) {
        
    }

    func mapping(map: Map) {
        type <- map["type"]
        value <- map["value"]
        description <- map["description"]
    }
}
