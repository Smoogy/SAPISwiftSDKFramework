//
//  Coordinates.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 7/03/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation
import ObjectMapper

public class Coordinates: Mappable {
    public var centre: GeoCoordinates?
    public var street: GeoCoordinates?

    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        centre <- map["centre"]
        street <- map["street"]
    }
}
