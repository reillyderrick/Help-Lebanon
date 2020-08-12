//
//  ViewController.swift
//  Help Lebanon
//
//  Created by reilly on 8/11/20.
//  Copyright © 2020 reilly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var homeButton1: UIButton!
    @IBOutlet weak var readButton1: UIButton!
    @IBOutlet weak var spreadButton1: UIButton!
    var dropState1 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func drop1(_ sender: Any) {
        if (dropState1 == 0) {
            homeButton1.isHidden = false
            readButton1.isHidden = false
            spreadButton1.isHidden = false
            dropState1 = 1
        } else if (dropState1 == 1){
            homeButton1.isHidden = true
            readButton1.isHidden = true
            spreadButton1.isHidden = true
            dropState1 = 0
        }
    }
}

