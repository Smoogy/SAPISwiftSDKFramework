//
//  SecondaryContact.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 7/03/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation

class OrderedSecondaryContact {
    var name: String!
    var contacts: [Contacts]!
    
    init(json: NSDictionary?) {
        self.name = json!["name"] as! String
        for contact in json!["contacts"] as! NSArray {
            self.contacts.append(Contacts(json: contact as? NSDictionary))
        }
    }
}