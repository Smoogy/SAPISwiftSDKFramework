//
//  SAPIConfig.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 24/02/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation

public class SAPIConfig {
    public var url: NSURL {
        get {
            var base: String =  "\(self.baseUrl)\(self.apiKey)"
            
            if page >= 1 {
                base += "&page=\(self.page)"
            }
            if rows >= 1 {
                base += "&rows=\(self.rows)"
            }
            if !query.isEmpty {
                base += "&query=\(self.query.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLHostAllowedCharacterSet())!)"
            }
            
            return NSURL(string: "\(base)")!
        }
    }

    public var page: Int = 0

    public var rows: Int = 0

    public var query: String = ""

    private var baseUrl: String {
        get {
            return self.SAPIConfig["BaseUrl"] as! String
        }
    }
    
    private var apiKey: String {
        get {
            return self.SAPIConfig["ApiKey"] as! String
        }
    }
    
    private var SAPIConfig: NSDictionary {
        get {
            if let config = NSBundle(identifier: "CallanB.SAPISwiftSDKFramework")?.infoDictionary {
                return NSDictionary(dictionary: config["SAPIConfig"] as! NSDictionary)
            }
            return NSDictionary()
        }
    }
}