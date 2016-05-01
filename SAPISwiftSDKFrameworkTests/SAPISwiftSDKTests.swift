//
//  SAPISwiftSDKTests.swift
//  SAPISwiftSDKTests
//
//  Created by Callan Bush on 18/10/2014.
//  Copyright (c) 2014 Smoogy. All rights reserved.
//

import SAPISwiftSDK
import UIKit
import XCTest

class SAPISwiftSDKTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testProperties() {
        let api = SAPI(key: "12345")
        api.apiKey = "6789"
        
        print(api.apiKey)
        XCTAssert(true, "Pass")
    }
    
    func testUrlInit() {
        let api = SAPI(key: "12345")
        
        print(api.url)
        XCTAssert(true, "Pass")
    }
    
    //Tests an invalid server string
    //Expected outcome: FAIL
    func testInvalidServInit() {
        do {
            _ = try SAPI(key: "12345", _server: "testServer")
        
        } catch SAPI.errorList.InvalidServer {
                print("Success! Invalid server.")
                XCTAssert(true, "Success!")
        }
        catch {
            print("Failure. Unexpected exception")
            XCTAssert(false, "Failure.")
        }
    }
    
    func testValidServInit() {
        do {
        //With a lowercase string
        var api = try SAPI(key: "ajw98f86cxrn8dery2ks6ku4", _server: "test")
        print(api.url)
        
        //With an uppercase string.
        api = try SAPI(key: "12345", _server: "PROD")
        print(api.url)
            
        print("Success! Valid server URLs have been initiated.")
        XCTAssert(true, "Pass")
        }
        catch {
            print("Failure. Unexpected error.")
            XCTAssert(false)
        }
    }
    
    // Should there be a reason for this to fail?
    // i.e. Invalid characters?
    func testAddQuery() {
        let api = SAPI(key: "ajw98f86cxrn8dery2ks6ku4")
        api.addQuery("epicstuff")
        
        print(api.url)
        
        api.addQuery("epicstuffffffffffff2")
        print(api.url)
        
        api.addToQuery("more stuff ! ")
        print(api.url)
        
        XCTAssert(true, "Success!")
    }
    
    func testToggleServ() {
        let api = SAPI(key: "12345")
        api.toggleServer()
        
        print(api.url)
        
        api.toggleServer()
        
        print(api.url)
        
        XCTAssert(true, "Success!")
    }
    
    func testValidSearch() {
        let api = SAPI(key: "ajw98f86cxrn8dery2ks6ku4")
        
        api.addQuery("coffee")
        
        print("URL before searching: \(api.url)")
        
        let NSUrlInput = NSURL(string: api.url)
        
        let results = SAPIResult.performSearch(NSUrlInput!)
        
        let resString = "results"
        
        results[resString]
        
        _ = results["results"]
        
        let firstResult = results[0]["aboutId"]
        
        if (firstResult == nil) {
            XCTAssert(false, "Fail. Invalid path.")
        }

        print("\(firstResult)")
        
        XCTAssert(true, "Success!")
    }
    
    func testValidCollection() {
        let api = SAPI(key: "ajw98f86cxrn8dery2ks6ku4", isProd: false)

        api.addQuery("coffee")
        
        let NSUrlInput = NSURL(string: api.url)
        
        let results = SAPIResult.performSearch(NSUrlInput!, onlyResults: true)
        
        if let res = results as? NSArray {
            for bus in res {
                print(bus["name"])
            }
            print("Success! Valid collection.")
            XCTAssert(true)
        }
        else {
            print("Failure! Collection was not an NSArray.")
            XCTAssert(false)
        }

    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
