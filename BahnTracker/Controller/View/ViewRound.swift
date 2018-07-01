//
//  ViewRound.swift
//  BahnTracker
//
//  Created by Domenik Fox on 21.11.17.
//  Copyright © 2017 FoxCode. All rights reserved.
//

import UIKit

class ViewRound: UIView {

    @IBOutlet var view: UIView!
    
    func makeRound() {
        self.view.layer.
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        Bundle.main.loadNibNamed("ViewRound", owner:self, options:nil)
        self.addSubview(self.view)
    }

}
