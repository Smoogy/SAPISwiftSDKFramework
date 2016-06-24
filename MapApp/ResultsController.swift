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
        let newBackButton = UIBarButtonItem(title: "Back", style: UIBarButtonItemStyle.bordered, target: self, action: #selector(ResultsController.back(_:)))
        self.navigationItem.leftBarButtonItem = newBackButton;
        
        navigationController?.navigationBar.isHidden = false
        
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return results.results.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "item") as! ItemTableViewCell!
        
        let result = results.results[indexPath.row]
        
        cell?.title.text = result.name
        
        if let busLogo = result.businessLogo {
            try? cell?.logo?.image = UIImage(data: Data(contentsOf: URL(string: (busLogo.url)!)!))
        }

        return cell!
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        index = (indexPath as NSIndexPath).row
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "toItem") {
            let itemController = segue.destinationViewController as! ItemController
            index = ((tableView.indexPathForSelectedRow as NSIndexPath?)?.row)!
            
            itemController.item = results.results[index]
        }
    }
    
    func back(_ sender: UIBarButtonItem) {
        navigationController?.popToRootViewController(animated: true)
        //performSegueWithIdentifier("toStart", sender: nil)
    }

}

class ItemTableViewCell : UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var logo: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}

