//
//  ResultsController.swift
//  SAPISwiftSDKFramework
//
//  Created by Callan Bush on 19/05/2016.
//  Copyright © 2016 Callan Bush. All rights reserved.
//

import UIKit
import SAPISwiftSDKFramework

class ResultsController: UITableViewController {
    
    var results: SAPIResponse!
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        let newBackButton = UIBarButtonItem(title: "Back", style: UIBarButtonItemStyle.Bordered, target: self, action: #selector(ResultsController.back(_:)))
        self.navigationItem.leftBarButtonItem = newBackButton;
        
        navigationController?.navigationBar.hidden = false
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return results.results.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("item") as! ItemTableViewCell!
        
        let result = results.results[indexPath.row]
        
        cell.title.text = result.name
        
        if let busLogo = result.businessLogo {
            cell.logo?.image = UIImage(data: NSData(contentsOfURL: NSURL(string: (busLogo.url)!)!)!)
        }

        return cell
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        index = indexPath.row
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "toItem") {
            let itemController = segue.destinationViewController as! ItemController
            index = (tableView.indexPathForSelectedRow?.row)!
            
            itemController.item = results.results[index]
        }
    }
    
    func back(sender: UIBarButtonItem) {
        navigationController?.popToRootViewControllerAnimated(true)
        //performSegueWithIdentifier("toStart", sender: nil)
    }

}

class ItemTableViewCell : UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var logo: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}

