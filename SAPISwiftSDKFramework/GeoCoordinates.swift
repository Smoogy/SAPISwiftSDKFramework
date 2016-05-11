//
//  GeoCoordinates.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 7/03/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation
import ObjectMapper

class GeoCoordinates: Mappable {
    var latitude: Double?
    var longitude: Double?
    
    required init?(_ map: Map) {
        
    }
    
    func mapping(map: Map) {
        latitude <- map["latitude"]
        longitude <- map["longitude"]
    }
}
