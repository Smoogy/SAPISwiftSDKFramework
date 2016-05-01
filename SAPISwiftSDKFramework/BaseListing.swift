//
//  Listing.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 7/03/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation

class Listing {
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

    init(json: NSDictionary) {
        self.categories = NSArray() as? [Category]
        self.id = json["id"] as? String
        self.name = json["name"] as? String
        self.shortDescriptor = json["shortDescriptor"] as? String
        self.mediumDescriptor = json["mediumDescriptor"] as? String
        self.serviceNotes = json["serviceNotes"] as? String
        self.detailsLink = json["detailsLink"] as! String
        self.pureMobileBusiness = json["pureMobileBusiness"] as? Bool
        self.pmbServicingMessage = json["pmbServicingMessage"] as? String
        self.priceQualifier = json["priceQualifier"] as? String
        self.hasExposureProducts = json["hasExposureProducts"] as? Bool
        self.businessLogo = BusinessLogo(json: json["businessLogo"] as? NSDictionary)
        self.businessInfo = BusinessInfo(json: json["businessInfo"] as? NSDictionary)
        for category in json["categories"] as! NSArray {
            self.categories?.append(Category(json: category as? NSDictionary))
        }
        for contact in json["primaryContacts"] as! NSArray {
            self.primaryContacts?.append(Contacts(json: contact as? NSDictionary))
        }
        if let secondaryContactsJson = json["orderedSecondaryContacts"] as? NSArray {
            for contactGroup in secondaryContactsJson {
            self.orderedSecondaryContacts?.append(OrderedSecondaryContact(json: contactGroup as? NSDictionary))
            }
        }
        if let primaryAddressJson = json["primaryAddress"] as? NSDictionary {
            self.primaryAddress = PrimaryAddress(json: primaryAddressJson)
        }
        if let additionalAddressesJson = json["additionalAddresses"] as? NSArray {
            for address in additionalAddressesJson {
                self.additionalAddresses?.append(PrimaryAddress(json: address as! NSDictionary))
            }
        }
    }
}