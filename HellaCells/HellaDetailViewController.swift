//
//  HellaDetailViewController.swift
//  HellaCells
//
//  Created by Lloyd W. Sykes on 12/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaDetailViewController: UIViewController {
    
    @IBOutlet weak var hellaLabel: UILabel!
    
    var hellaNum: String?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let hellaNum = hellaNum {
            hellaLabel.text = hellaNum
        }
    }
    
}
