//
//  BahnTableViewCell.swift
//  BahnTracker
//
//  Created by Domenik Fox on 24.11.17.
//  Copyright © 2017 FoxCode. All rights reserved.
//

import UIKit

class BahnTableViewCell: UITableViewCell {

    @IBOutlet weak var HaltestelleLabel: UILabel!
    @IBOutlet weak var LinieLabel: UILabel!
    @IBOutlet weak var ZeitLabel: UILabel!
    @IBOutlet weak var EinheitLabel: UILabel!

    func updateUI(){
        HaltestelleLabel.text = "test"
    }
    
}
