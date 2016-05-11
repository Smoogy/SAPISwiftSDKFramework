//
//  GalleryItem.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 1/05/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation
import ObjectMapper

class GalleryItem: Mappable {
    var thumbnailUrl: String!
    var largeUrl: String!
    var altText: String?

    required init?(_ map: Map) {
        
    }
    
    func mapping(map: Map) {
        thumbnailUrl <- map["thumbnailUrl"]
        largeUrl <- map["largeUrl"]
        altText <- map["altText"]
    }
}
