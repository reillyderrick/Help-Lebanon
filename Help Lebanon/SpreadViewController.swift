//
//  SpreadViewController.swift
//  Help Lebanon
//
//  Created by reilly on 8/12/20.
//  Copyright © 2020 reilly. All rights reserved.
//

import UIKit

class SpreadViewController: UIViewController {

    @IBOutlet weak var homeButton3: UIButton!
    @IBOutlet weak var readButton3: UIButton!
    @IBOutlet weak var spreadButton3: UIButton!
    var dropState3 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func drop3(_ sender: Any) {
        if (dropState3 == 0) {
            homeButton3.isHidden = false
            readButton3.isHidden = false
            spreadButton3.isHidden = false
            dropState3 = 1
        } else if (dropState3 == 1){
            homeButton3.isHidden = true
            readButton3.isHidden = true
            spreadButton3.isHidden = true
            dropState3 = 0
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
