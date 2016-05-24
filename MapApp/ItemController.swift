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

        self.populateView()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func populateView() {
        logo.image = UIImage(
            data: NSData(
                contentsOfURL: NSURL(
                    string: (
                        item.businessLogo?.url)!)!)!)
        name.text = item.name!
    }
    
    @IBOutlet weak var logo: UIImageView!
    
    @IBOutlet weak var name: UILabel!
}
