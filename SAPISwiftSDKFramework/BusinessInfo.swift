//
//  BusinessInfo.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 7/03/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation

class BusinessInfo {
    var legalId: String?
    var abn: String?
    var acn: String?
    var numberOfEmployees: String?
    var dateEstablished: String?

    init(json: NSDictionary?) {
        self.legalId = json!["legalId"] as? String
        self.abn = json!["abn"] as? String
        self.acn = json!["acn"] as? String
        self.numberOfEmployees = json!["numberOfEmployees"] as? String
        self.dateEstablished = json!["dateEstablished"] as? String
        // TODO: Convert this ^ into an NSDate
    }
}
