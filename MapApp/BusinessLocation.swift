//
//  BusinessLocation.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 24/6/16.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import Foundation
import MapKit
import UIKit

public class BusinessLocation: NSObject, MKAnnotation {
	public var title: String?
	public var coordinate: CLLocationCoordinate2D
	public var info: String
	
	public init(title: String, coordinate: CLLocationCoordinate2D, info: String) {
		self.title = title
		self.coordinate = coordinate
		self.info = info
	}	
}
