//
//  PrimaryAddress.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 7/03/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation
import ObjectMapper

public class PrimaryAddress: Mappable {
    public var type: String!
    public var addressLine: String?
    public var suburb: String!
    public var state: String?
    public var postcode: String!
    public var latitude: String?
    public var longitude: String?
    public var geoCodeGranularity: String!
    public var mappable: Bool!
    public var coordinates: Coordinates?
	
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(_ map: Map) {
        type <- map["type"]
        addressLine <- map["addressLine"]
        suburb <- map["suburb"]
        state <- map["state"]
        postcode <- map["postcode"]
        latitude <- map["latitude"]
        longitude <- map["longitude"]
        geoCodeGranularity <- map["geoCodeGranularity"]
        mappable <- map["mappable"]
        coordinates <- map["coordinates"]
    }
}
