//
//  BaseResponse.swift
//  SAPISwiftSDK
//
//  Created by Callan Bush on 28/10/2015.
//  Copyright © 2015 Smoogy. All rights reserved.
//

import Foundation
import ObjectMapper

class BaseResponse: Mappable {
    var date: String?
    var time: Int?
    var code: Int?
    var message: String?
 
    required init?(_ map: Map) {

    }
    
    func mapping(map: Map) {
        date <- map["date"]
        time <- map["time"]
        code <- map["code"]
        message <- map["message"]
    }
}
