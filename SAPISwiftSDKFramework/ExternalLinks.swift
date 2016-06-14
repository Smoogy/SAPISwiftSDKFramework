//
//  ExternalLinks.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 1/05/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation
import ObjectMapper

public class ExternalLinks: Mappable {
    public var links: [Link]?
    
    required public init?(_ map: Map) {
        
    }

    public func mapping(_ map: Map) {
        links <- map["links"]
    }    
}
