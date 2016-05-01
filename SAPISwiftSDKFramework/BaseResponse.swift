//
//  BaseResponse.swift
//  SAPISwiftSDK
//
//  Created by Callan Bush on 28/10/2015.
//  Copyright © 2015 Smoogy. All rights reserved.
//

import Foundation

class BaseResponse : NSObject {
    var date: String
    var time: Int
    var code: Int
    var message: String
 
    init(json: NSDictionary) {
        self.date = json["date"] as! String
        self.time = json["time"] as! Int
        self.code = json["code"] as! Int
        self.message = json["message"] as! String
    }
}