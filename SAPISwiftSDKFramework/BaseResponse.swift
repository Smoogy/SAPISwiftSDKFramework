//
//  BaseResponse.swift
//  SAPISwiftSDK
//
//  Created by Callan Bush on 28/10/2015.
//  Copyright © 2015 Smoogy. All rights reserved.
//

import Foundation
import ObjectMapper

public class BaseResponse: Mappable {
    public var date: String?
    public var time: Int?
    public var code: Int?
    public var message: String?
 
    required public init?(_ map: Map) {

    }
    
    public func mapping(_ map: Map) {
        date <- map["date"]
        time <- map["time"]
        code <- map["code"]
        message <- map["message"]
    }
}
