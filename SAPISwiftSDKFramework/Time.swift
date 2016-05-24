//
//  Time.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 10/05/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation
import ObjectMapper

public class Time: Mappable {
    public var open: NSDate!
    public var close: NSDate!
    
    required public init?(_ map: Map) {
        
    }

    public func mapping(map: Map) {
        open <- (map["open"], DateTransform())
        close <- (map["close"], DateTransform())
    }
}
