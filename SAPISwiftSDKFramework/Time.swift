//
//  Time.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 10/05/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation
import ObjectMapper

class Time: Mappable {
    var open: NSDate!
    var close: NSDate!
    
    required init?(_ map: Map) {
        
    }

    func mapping(map: Map) {
        open <- (map["open"], DateTransform())
        close <- (map["close"], DateTransform())
    }
}
