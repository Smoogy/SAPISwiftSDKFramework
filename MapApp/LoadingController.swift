//
//  LoadingController.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 18/05/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import UIKit
import SAPISwiftSDKFramework

class LoadingController: ViewController {

    var searchQuery: String!
    var results: SAPIResponse!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.hidden = true
    }

    
    override func viewDidAppear(animated: Bool) {
        self.performSearch(searchQuery)
        
        self.performSegueWithIdentifier("resultsSegue", sender: self)

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func performSearch(query: String) {
        let test = SAPI(page: 1, rows: 5, query: searchQuery)
        
        results = test.performSearch()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "resultsSegue") {
            let resultsController = segue.destinationViewController as! ResultsController
            
            resultsController.results = self.results
        }
    }


}