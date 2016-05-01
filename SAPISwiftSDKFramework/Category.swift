//
//  Categories.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 7/03/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation

class Category {
    var id: String!
    var name: String!
    var sensitive: Bool?
    
    init(json: NSDictionary?) {
        self.id = json!["id"] as! String
        self.name = json!["name"] as! String
        self.sensitive = json!["sensitive"] as? Bool
    }
}