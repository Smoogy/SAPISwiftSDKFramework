//
//  ImageGallery.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 1/05/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation
import ObjectMapper

public class ImageGallery: Mappable {
    public var items: [GalleryItem]?

    required public init?(_ map: Map) {
        
    }
    
    public func mapping(_ map: Map) {
        items <- map["items"]
    }
}
