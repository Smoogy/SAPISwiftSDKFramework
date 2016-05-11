//
//  ExternalLinks.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 1/05/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation
import ObjectMapper

class ExternalLinks: Mappable {
    var links: [Link]?
    
    required init?(_ map: Map) {
        
    }

    func mapping(map: Map) {
        links <- map["links"]
    }    
}
