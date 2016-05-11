//
//  Coordinates.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 7/03/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation
import ObjectMapper

class Coordinates: Mappable {
    var centre: GeoCoordinates?
    var street: GeoCoordinates?

    required init?(_ map: Map) {
        
    }
    
    func mapping(map: Map) {
        centre <- map["centre"]
        street <- map["street"]
    }
}
