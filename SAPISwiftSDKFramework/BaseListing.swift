//
//  Listing.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 7/03/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation
import ObjectMapper

class Listing: Mappable {
    var id: String!
    var name: String!
    var shortDescriptor: String?
    var mediumDescriptor: String?
    var serviceNotes: String?
    var detailsLink: String!
    var pureMobileBusiness: Bool?
    var pmbServicingMessage: String?
    var priceQualifier: String?
    var hasExposureProducts: Bool?
    var businessLogo: BusinessLogo?
    var businessInfo: BusinessInfo?
    var categories: [Category]?
    var primaryContacts: [Contacts]!
    var orderedSecondaryContacts: [OrderedSecondaryContact]?
    var primaryAddress: PrimaryAddress? /// This should not be optional,
    /// according to http://developers.sensis.com.au/docs/reference/Listing_Schema
    var additionalAddresses: [PrimaryAddress]?
    var orderedProductKeywords: [OrderedProductKeywords]?
    var reportingId: String?
    var openingHours: [Day]?
    var distance: Double?
    var reviewSummaries: [ReviewSummary]?
    
    required init?(_ map: Map) {
        
    }
    
    func mapping(map: Map) {
        categories <- map["categories"]
        id <- map["id"]
        name <- map["name"]
        shortDescriptor <- map["shortDescriptor"]
        mediumDescriptor <- map["mediumDescriptor"]
        serviceNotes <- map["serviceNotes"]
        detailsLink <- map["detailsLink"]
        pureMobileBusiness <- map["pureMobileBusiness"]
        pmbServicingMessage <- map["pmbServicingMessage"]
        priceQualifier <- map["priceQualifier"]
        hasExposureProducts <- map["hasExposureProducts"]
        businessLogo <- map["businessLogo"]
        businessInfo <- map["businessInfo"]
        primaryContacts <- map["primaryContacts"]
        orderedSecondaryContacts <- map["orderedSecondaryContacts"]
        primaryAddress <- map["primaryAddress"]
        additionalAddresses <- map["additionalAddresses"]
        orderedProductKeywords <- map["orderedProductKeywords"]
        reportingId <- map["reportingId"]
        openingHours <- map["openingHours"]
        distance <- map["distance"]
        reviewSummaries <- map["reviewSummaries"]
    }
}
