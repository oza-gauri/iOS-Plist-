
//
//  TableViewController.swift
//  PlistDemo
//
//  Created by Aress Software Pvt Ltd on 30/08/19.
//  Copyright © 2019 Aress Software Pvt Ltd. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var tableData = [String]()
    var tableValues = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = Bundle.main.path(forResource: "AllVersions", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        
        tableData = dict!.object(forKey: "Version Name") as! [String]
        tableValues = dict!.object(forKey: "Version Code") as! [String]
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return tableData.count
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if  segue.identifier == "mySegue"
        {
            let s1 = segue.destination as! VersionViewController
            
            let blogIndex = tableView.indexPathForSelectedRow?.row
            
            s1.pass = tableData[blogIndex!]
            
            
        }    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! TableViewCell
        
        cell.textLabel?.text = tableValues[indexPath.row]
        
        return cell
    }
 

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
