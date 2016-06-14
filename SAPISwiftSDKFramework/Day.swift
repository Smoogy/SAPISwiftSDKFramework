//
//  Hour.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 10/05/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation
import ObjectMapper

public class Day: Mappable {
    public var status: String! // TODO: Change to enum
    public var times: [Time]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(_ map: Map) {
        status <- map["status"]
        times <- map["times"]
    }
}
