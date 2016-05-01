//
//  SAPI.swift
//  SAPISwiftSDK
//
//  Created by Callan Bush on 18/10/2014.
//  Copyright (c) 2014 Callan Bush. All rights reserved.
//

import Foundation

class SAPI {
    var url: NSURL
    var config: SAPIConfig = SAPIConfig()
    var page: Int {
        get {
            return config.page
        }
        set(value) {
            config.page = value
        }
    }
    var rows: Int {
        get {
            return config.rows
        }
        set(value) {
            config.rows = value
        }
    }
    var query: String {
        get {
            return config.query
        }
        set(value) {
            config.query = value
        }
    }
    
    /// CONSTRUCTORS
    init(page: Int) {
        config.page = page

        self.url = config.url
    }
    
    init(rows: Int) {
        config.rows = rows
        
        self.url = config.url
    }
    
    init(page: Int, rows: Int) {
        config.page = page
        config.rows = rows

        self.url = config.url
    }
    
    init(page: Int, rows: Int, query: String) {
        config.page = page
        config.rows = rows
        config.query = query

        self.url = config.url
    }
    
    convenience init() {
        self.init(page: 1, rows: 100, query: "")
    }
    
    /// PUBLIC METHODS
    func performSearch() -> SAPIResponse {
        return self.performSearch(url)
    }
    
    /// PRIVATE METHODS
    private func performSearch (inputUrl: NSURL!) -> SAPIResponse {
        let jdata = NSData(contentsOfURL: inputUrl)!
        var results: SAPIResponse!
        
        do {
            try results = parseJSON(jdata)
        } catch ErrorList.JSONError {
            print("An error parsing the JSON occured.")
        }
        catch {
            print("An error occured.")
        }
    
        return results
    }

    private func parseJSON(inputData: NSData) throws -> SAPIResponse {
        let jsonData: AnyObject = try NSJSONSerialization.JSONObjectWithData(inputData, options: .MutableContainers)
        if let dict = jsonData as? NSDictionary {
            return SAPIResponse(json: dict)
        }
        else {
            throw ErrorList.JSONError
        }
    }
}