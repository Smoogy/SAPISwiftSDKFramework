//
//  ViewController.swift
//  MapApp
//
//  Created by Callan Bush on 18/05/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "segueTest") {
            let loadingController = segue.destinationViewController as! LoadingController;

            loadingController.searchQuery = searchField.text
        }
    }
    
    @IBOutlet weak var searchField: UITextField!
    
    @IBOutlet weak var searchBtn: UIButton!
}

