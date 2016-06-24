//
//  ItemController.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 23/05/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import UIKit
import MapKit
import SAPISwiftSDKFramework

class ItemController: ViewController {

    var item: Listing!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        map.delegate = self
        
        name.adjustsFontSizeToFitWidth = true
        self.populateView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.navigationBar.isHidden = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func populateView() {
        if let lat = Double((item.primaryAddress?.latitude)!) {
            if let long = Double((item.primaryAddress?.longitude)!) {
                
                let vicinity = CLLocationCoordinate2D(latitude: lat, longitude: long)
                
                let coordinateRegion = MKCoordinateRegionMakeWithDistance(vicinity, 1000 * 2.0, 1000 * 2.0)
				
				let location = BusinessLocation(title: item.name, coordinate: CLLocationCoordinate2D(latitude: lat, longitude: long), info: "This is an awesome test.")
                map.addAnnotation(location)

                map.setRegion(coordinateRegion, animated: true)
            }
        }
        
        if let busLogo = item.businessLogo {
             try? logo.image = UIImage(
                data: Data(
                    contentsOf: URL(
                        string: (
                            busLogo.url)!)!))
        }
        name.text = item.name!
        
        if let primaryAddress = item.primaryAddress {
            if primaryAddress.addressLine != nil {
                address.text = primaryAddress.addressLine
            }
            address.text = "\(address.text!) \(primaryAddress.suburb ?? "") \(primaryAddress.state!) \(primaryAddress.postcode ?? "")"
        }
        
    }
    
    @IBOutlet weak var logo: UIImageView!
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var address: UILabel!
    
    @IBOutlet weak var map: MKMapView!
}
