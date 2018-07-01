//
//  BahnViewController.swift
//  BahnTracker
//
//  Created by Domenik Fox on 22.11.17.
//  Copyright © 2017 FoxCode. All rights reserved.
//

import UIKit

class BahnViewController: UIViewController {

    @IBOutlet weak var haltestelleLabel: UILabel!
    @IBOutlet weak var linieLabel: UILabel!
    @IBOutlet weak var countdownLabel: UILabel!;
    var bahnIndex: Int!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.haltestelleLabel.text = "Index \(bahnIndex)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
