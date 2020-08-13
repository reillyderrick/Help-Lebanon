//
//  DonateViewController.swift
//  Help Lebanon
//
//  Created by Maddie Shenkan on 8/12/20.
//  Copyright © 2020 reilly. All rights reserved.
//

import UIKit

class DonateViewController: UIViewController {
    
    
    @IBOutlet weak var homeButton4: UIButton!
    @IBOutlet weak var readButton4: UIButton!
    @IBOutlet weak var spreadButton4: UIButton!
    var dropState4 = 0
    
    @IBAction func unicefButton(_ sender: UIButton) {
        
        if let url = NSURL(string: "https://www.unicefusa.org/") {         UIApplication.shared.open(url as URL)     }
              }
    
    
override func viewDidLoad() {
        super.viewDidLoad()
    }

   
       

    @IBAction func drop4(_ sender: Any) {
        if (dropState4 == 0) {
            homeButton4.isHidden = false
            readButton4.isHidden = false
            spreadButton4.isHidden = false
            dropState4 = 1
        } else if (dropState4 == 1){
            homeButton4.isHidden = true
            readButton4.isHidden = true
            spreadButton4.isHidden = true
            dropState4 = 0
        }
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

