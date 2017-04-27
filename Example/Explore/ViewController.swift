//
//  ViewController.swift
//  Explore
//
//  Created by dnosk on 04/26/2017.
//  Copyright (c) 2017 dnosk. All rights reserved.
//

import Explore
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var appsDownloaded = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        appsDownloaded = exploreAppsDownloaded()
        
        tableView.reloadData()
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return appsDownloaded.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let app = appsDownloaded[indexPath.row]
        cell.textLabel?.text = app
        
        return cell
    }
}

