//
//  GeoCoordinates.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 7/03/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation
import ObjectMapper

public class GeoCoordinates: Mappable {
    public var latitude: Double?
    public var longitude: Double?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        latitude <- map["latitude"]
        longitude <- map["longitude"]
    }
}
