//
//  ItemController.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 23/05/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import UIKit
import SAPISwiftSDKFramework

class ItemController: ViewController {

    var item: Listing!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        name.adjustsFontSizeToFitWidth = true
        self.populateView()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.navigationBar.hidden = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func populateView() {
        if let busLogo = item.businessLogo {
            logo.image = UIImage(
                data: NSData(
                    contentsOfURL: NSURL(
                        string: (
                            busLogo.url)!)!)!)
        }
        name.text = item.name!
        
        if let primaryAddress = item.primaryAddress {
            if primaryAddress.addressLine != nil {
                address.text = primaryAddress.addressLine
            }
            address.text = "\(address.text!) \(primaryAddress.suburb) \(primaryAddress.state!) \(primaryAddress.postcode)"
        }
        
    }
    
    @IBOutlet weak var logo: UIImageView!
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var address: UILabel!
}
