//
//  SecondaryContact.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 7/03/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation
import ObjectMapper

class OrderedSecondaryContact: Mappable {
    var name: String!
    var contacts: [Contacts]!

    required init?(_ map: Map) {
        
    }
    
    func mapping(map: Map) {
        name <- map["name"]
        contacts <- map["contacts"]
    }
}
