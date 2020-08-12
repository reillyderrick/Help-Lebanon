//
//  ReadViewController.swift
//  Help Lebanon
//
//  Created by reilly on 8/12/20.
//  Copyright © 2020 reilly. All rights reserved.
//

import UIKit

class ReadViewController: UIViewController {

    @IBOutlet weak var homeButton2: UIButton!
    @IBOutlet weak var readButton2: UIButton!
    @IBOutlet weak var spreadButton2: UIButton!
    var dropState2 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func drop2(_ sender: Any) {
        if (dropState2 == 0) {
            homeButton2.isHidden = false
            readButton2.isHidden = false
            spreadButton2.isHidden = false
            dropState2 = 1
        } else if (dropState2 == 1){
            homeButton2.isHidden = true
            readButton2.isHidden = true
            spreadButton2.isHidden = true
            dropState2 = 0
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
