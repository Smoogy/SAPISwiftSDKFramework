//
//  GalleryItem.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 1/05/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation
import ObjectMapper

public class GalleryItem: Mappable {
    public var thumbnailUrl: String!
    public var largeUrl: String!
    public var altText: String?

    required public init?(_ map: Map) {
        
    }
    
    public func mapping(_ map: Map) {
        thumbnailUrl <- map["thumbnailUrl"]
        largeUrl <- map["largeUrl"]
        altText <- map["altText"]
    }
}
