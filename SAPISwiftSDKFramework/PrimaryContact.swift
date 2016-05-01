//
//  PrimaryContact.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 7/03/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation

class PrimaryContact {
    var type: String!
    var value: String!
    var description: String?
    
    init(json: NSDictionary?) {
        type = json!["type"] as! String
        value = json!["value"] as! String
        description = json?["description"] as? String
    }
}