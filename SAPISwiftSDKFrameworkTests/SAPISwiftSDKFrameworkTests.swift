//
//  SAPISwiftSDKFrameworkTests.swift
//  SAPISwiftSDKFrameworkTests
//
//  Created by Callan Bush on 1/03/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Quick
import Nimble

class SAPISwiftSDKFrameworkSpec: QuickSpec {
    override func spec() {
        describe("The SAPI class") {
            describe("has been instantiated") {
                it("with default constructor") {
                    let api = SAPI()
                
                    expect(api.url).toNot(beNil())
                }
                it("with rows constructor") {
                    let api = SAPI(rows: 1)
                    
                    expect(api.url).toNot(beNil())
                }
                it("with pages constructor") {
                    let api = SAPI(page: 1)
                    
                    expect(api.url).toNot(beNil())
                }
                it("with both rows and pages constructor") {
                    let api = SAPI(page: 1, rows: 1)
                    
                    expect(api.url).toNot(beNil())
                    expect(api.page).to(equal(1))
                    expect(api.rows).to(equal(1))
                }
                it("with convenience constructor") {
                    let api = SAPI()
                    
                    expect(api.url).toNot(beNil())
                    expect(api.page).to(equal(1))
                    expect(api.rows).to(equal(100))
                    expect(api.query).to(equal(""))
                }
            }
            describe("has performed a search") {
                it("with a query") {
                    let api = SAPI(page: 1, rows: 1, query: "coffee")
                    
                    let data = api.performSearch()
                    
                    expect(data.results).toNot(beNil())
                    expect(data.results.count).to(beGreaterThan(0))
                }
                it("with a query with multiple rows") {
                    let api = SAPI(page: 1, rows: 5, query: "coffee")
                    
                    let data = api.performSearch()
                    
                    expect(data.results).toNot(beNil())
                    expect(api.page).to(equal(1))
                    expect(api.rows).to(equal(5))
                    expect(data.results.count).to(equal(5))
                }
            }
        }
    }
}
