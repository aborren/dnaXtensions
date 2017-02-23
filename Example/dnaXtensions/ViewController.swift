//
//  ViewController.swift
//  dnaXtensions
//
//  Created by dan_isacson@hotmail.com on 02/23/2017.
//  Copyright (c) 2017 dan_isacson@hotmail.com. All rights reserved.
//

import UIKit
import dnaXtensions

class ViewController: UIViewController {

    @IBOutlet weak var lightLabel: UILabel!
    @IBOutlet weak var baseLabel: UILabel!
    @IBOutlet weak var darkLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lightLabel.backgroundColor = baseLabel.backgroundColor?.lighter()
        darkLabel.backgroundColor = baseLabel.backgroundColor?.darker()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

