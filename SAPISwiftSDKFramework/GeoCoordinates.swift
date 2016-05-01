//
//  GeoCoordinates.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 7/03/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation

class GeoCoordinates {
    var latitude: Double?
    var longitude: Double?
    
    init(json: NSDictionary?) {
        self.latitude = json?["latitude"] as? Double
        self.longitude = json?["longitude"] as? Double
    }
}