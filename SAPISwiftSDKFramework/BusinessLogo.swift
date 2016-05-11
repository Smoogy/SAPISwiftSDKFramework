//
//  businessLogo.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 7/03/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation
import ObjectMapper

class BusinessLogo: Mappable {
    var url: String?
    var altText: String?
    
    required init?(_ map: Map) {
        
    }
    
    func mapping(map: Map) {
        url <- map["url"]
        altText <- map["altText"]
    }
}
