//
//  Hour.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 10/05/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation
import ObjectMapper

class Day: Mappable {
    var status: String! // TODO: Change to enum
    var times: [Time]?
    
    required init?(_ map: Map) {
        
    }
    
    func mapping(map: Map) {
        status <- map["status"]
        times <- map["times"]
    }
}
