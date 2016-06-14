//
//  Listing.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 7/03/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation
import ObjectMapper

public class Listing: Mappable {
    public var id: String!
    public var name: String!
    public var shortDescriptor: String?
    public var mediumDescriptor: String?
    public var serviceNotes: String?
    public var detailsLink: String!
    public var pureMobileBusiness: Bool?
    public var pmbServicingMessage: String?
    public var priceQualifier: String?
    public var hasExposureProducts: Bool?
    public var businessLogo: BusinessLogo?
    public var businessInfo: BusinessInfo?
    public var categories: [Category]?
    public var primaryContacts: [Contacts]!
    public var orderedSecondaryContacts: [OrderedSecondaryContact]?
    public var primaryAddress: PrimaryAddress? /// This should not be optional,
    /// according to http://developers.sensis.com.au/docs/reference/Listing_Schema
    public var additionalAddresses: [PrimaryAddress]?
    public var orderedProductKeywords: [OrderedProductKeywords]?
    public var reportingId: String?
    public var openingHours: [Day]?
    public var distance: Double?
    public var reviewSummaries: [ReviewSummary]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(_ map: Map) {
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
