//
//  ImageGallery.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 1/05/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation
import ObjectMapper

class ImageGallery: Mappable {
    var items: [GalleryItem]?

    required init?(_ map: Map) {
        
    }
    
    func mapping(map: Map) {
        items <- map["items"]
    }
}
