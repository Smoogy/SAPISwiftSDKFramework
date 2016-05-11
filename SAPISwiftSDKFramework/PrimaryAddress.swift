//
//  PrimaryAddress.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 7/03/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation
import ObjectMapper

class PrimaryAddress: Mappable {
    var type: String!
    var addressLine: String?
    var suburb: String!
    var postcode: String!
    var latitude: String?
    var longitude: String?
    var geoCodeGranularity: String!
    var mappable: Bool!
    var coordinates: Coordinates?

    required init?(_ map: Map) {
        
    }
    
    func mapping(map: Map) {
        type <- map["type"]
        addressLine <- map["addressLine"]
        suburb <- map["suburb"]
        postcode <- map["postcode"]
        latitude <- map["latitude"]
        longitude <- map["longitude"]
        geoCodeGranularity <- map["geoCodeGranularity"]
        mappable <- map["mappable"]
        coordinates <- map["coordinates"]
    }
}
