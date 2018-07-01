//
//  TimelineViewController.swift
//  Caboose
//
//  Created by Philipp Steinroetter on 11.09.17.
//  Copyright © 2017 Caboose. All rights reserved.
//

import UIKit

class BahnTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet var backgroundView: UIView!
    
    let section = ["Willst Du mit?", "Schifffahrtsliste", "Vergangene Ausfahrten"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("BahnTableViewCell", owner: self, options: nil)?.first as! BahnTableViewCell
        cell.updateUI()
        return cell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    

    
}

