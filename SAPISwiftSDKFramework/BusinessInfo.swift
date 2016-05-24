//
//  BusinessInfo.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 7/03/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation
import ObjectMapper

public class BusinessInfo: Mappable {
    public var legalId: String?
    public var abn: String?
    public var acn: String?
    public var numberOfEmployees: String?
    public var dateEstablished: NSDate?

    required public init?(_ map: Map) {
        
    }

    public func mapping(map: Map) {
        legalId <- map["legalId"]
        abn <- map["abn"]
        acn <- map["acn"]
        numberOfEmployees <- map["numberOfEmployees"]
        dateEstablished <- (map["dateEstablished"], DateTransform())
    }
}
