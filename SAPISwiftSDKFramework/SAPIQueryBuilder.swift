//
//  SAPIQueryBuilder.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 6/03/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation

class SAPIQueryBuilder {
    func appendQuery(url: String, query: String) -> String {
        return "\(url)&query=\(query)"
    }
}