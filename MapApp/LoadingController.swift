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
        navigationController?.navigationBar.isHidden = true
    }

    
    override func viewDidAppear(_ animated: Bool) {
        self.performSearch(searchQuery)
        
        self.performSegue(withIdentifier: "resultsSegue", sender: self)

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func performSearch(_ query: String) {
        let test = SAPI(page: 1, rows: 5, query: searchQuery)
        
        results = test.performSearch()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "resultsSegue") {
            let resultsController = segue.destinationViewController as! ResultsController
            
            resultsController.results = self.results
        }
    }


}
