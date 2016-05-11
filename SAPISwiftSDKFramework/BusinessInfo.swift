//
//  BusinessInfo.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 7/03/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation
import ObjectMapper

class BusinessInfo: Mappable {
    var legalId: String?
    var abn: String?
    var acn: String?
    var numberOfEmployees: String?
    var dateEstablished: NSDate?

    required init?(_ map: Map) {
        
    }

    func mapping(map: Map) {
        legalId <- map["legalId"]
        abn <- map["abn"]
        acn <- map["acn"]
        numberOfEmployees <- map["numberOfEmployees"]
        dateEstablished <- (map["dateEstablished"], DateTransform())
    }
}
