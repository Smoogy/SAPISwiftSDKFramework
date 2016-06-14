//
//  SAPI.swift
//  SAPISwiftSDK
//
//  Created by Callan Bush on 18/10/2014.
//  Copyright (c) 2014 Callan Bush. All rights reserved.
//

import Foundation
import ObjectMapper

public class SAPI {
    public var url: URL
    public var config: SAPIConfig = SAPIConfig()
    public var page: Int {
        get {
            return config.page
        }
        set(value) {
            config.page = value
        }
    }
    public var rows: Int {
        get {
            return config.rows
        }
        set(value) {
            config.rows = value
        }
    }
    public var query: String {
        get {
            return config.query
        }
        set(value) {
            config.query = value
        }
    }
    
    /// CONSTRUCTORS
    public init(page: Int) {
        config.page = page

        self.url = config.url as URL
    }
    
    public init(rows: Int) {
        config.rows = rows
        
        self.url = config.url as URL
    }
    
    public init(page: Int, rows: Int) {
        config.page = page
        config.rows = rows

        self.url = config.url as URL
    }
    
    public init(page: Int, rows: Int, query: String) {
        config.page = page
        config.rows = rows
        config.query = query

        self.url = config.url as URL
    }
    
    convenience public init() {
        self.init(page: 1, rows: 100, query: "")
    }
    
    /**
     Performs search against the SAPI Search endpoint.
     
     - returns: An SAPIResponse object.
     */
    public func performSearch() -> SAPIResponse {
        return self.performSearch(url)
    }
    
    private func performSearch (_ inputUrl: URL!) -> SAPIResponse {
        let jdata = try? Data(contentsOf: inputUrl)
        var results: SAPIResponse!
        debugPrint("Attempting search with the URL: \(inputUrl)")
        
        do {
            try results = parseJSON(jdata!)
        } catch ErrorList.JsonError (let description) {
            print(description)
        }
        catch {
            print("An error occurred.")
        }
    
        return results
    }

    private func parseJSON(_ inputData: Data) throws -> SAPIResponse {
        let jsonData: AnyObject = try JSONSerialization.jsonObject(with: inputData, options: .mutableContainers)

        if let _ = jsonData as? NSDictionary {
            if let map = Mapper<SAPIResponse>().map(jsonData) as SAPIResponse? {
                return map
            } else {
                throw ErrorList.JsonError(description: "Error occurred when mapping JSON to object")
            }
        } else {
            throw ErrorList.JsonError(description: "Error occurred when casting JSON to an NSDictionary")
        }
    }
}
