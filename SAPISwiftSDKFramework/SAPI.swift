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
    

    /// Performs a search with the allocated the assigned url.
    /// - returns: SAPIResponse
    public func performSearch() -> SAPIResponse {
        return self.performSearch(url)
    }
	
	
    /// Performs a search with an URL as a parameter.
    ///
    /// - parameter inputUrl:	The compiled URL to be queried.
    ///
    /// - returns: SAPIResponse
    public func performSearch (_ inputUrl: URL!) -> SAPIResponse {
        let jdata = try? Data(contentsOf: inputUrl)
        var results: SAPIResponse!
        debugPrint("Attempting search with the URL: \(inputUrl)")
        
        do {
            try results = parseJSON(jdata!)
        } catch ErrorList.JsonError (let description) {
            print(description)
        } catch {
            print("An error occurred.")
        }
    
        return results
    }

    private func parseJSON(_ inputData: Data) throws -> SAPIResponse {
        let jsonData: AnyObject = try JSONSerialization.jsonObject(
			with: inputData, options: .mutableContainers)
		
		guard let map = Mapper<SAPIResponse>().map(jsonData) else {
          throw ErrorList.JsonError(description: "Error occurred when mapping JSON to object")
		}
		
		return map
    }
}
