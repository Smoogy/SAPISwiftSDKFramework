//
//  Coordinates.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 7/03/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation

class Coordinates {
    var centre: GeoCoordinates?
    var street: GeoCoordinates?
    
    init(json: NSDictionary?) {
        self.centre = GeoCoordinates(json: json?["centre"] as? NSDictionary)
        self.street = GeoCoordinates(json: json?["street"] as? NSDictionary)
    }
}