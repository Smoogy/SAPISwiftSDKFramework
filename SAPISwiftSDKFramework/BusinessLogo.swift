//
//  businessLogo.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 7/03/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation

class BusinessLogo {
    var url: String?
    var altText: String?
    
    init(json: NSDictionary?) {
        self.url = json!["url"] as? String
        self.altText = json!["altText"] as? String
    }
}