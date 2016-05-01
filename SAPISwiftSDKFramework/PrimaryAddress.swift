//
//  PrimaryAddress.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 7/03/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation

class PrimaryAddress {
    var type: String!
    var addressLine: String?
    var suburb: String!
    var postcode: String!
    var latitude: String?
    var longitude: String?
    var geoCodeGranularity: String!
    var mappable: Bool!
    var coordinates: Coordinates?
    
    init(json: NSDictionary) {
        self.type = json["type"] as! String
        self.addressLine = json["addressLine"] as? String
        self.suburb = json["suburb"] as! String
        self.postcode = json["postcode"] as! String
        self.latitude = json["latitude"] as? String
        self.longitude = json["longitude"] as? String
        self.geoCodeGranularity = json["geoCodeGranularity"] as! String
        self.mappable = json["mappable"] as! Bool
        self.coordinates = Coordinates(json: json["coordinates"] as? NSDictionary)
    }
}