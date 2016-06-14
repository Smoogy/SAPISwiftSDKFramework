//
//  businessLogo.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 7/03/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation
import ObjectMapper

public class BusinessLogo: Mappable {
    public var url: String?
    public var altText: String?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(_ map: Map) {
        url <- map["url"]
        altText <- map["altText"]
    }
}
