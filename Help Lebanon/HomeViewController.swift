//
//  HomeViewController.swift
//  Help Lebanon
//
//  Created by reilly on 8/12/20.
//  Copyright © 2020 reilly. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var homeButton1: UIButton!
    @IBOutlet weak var readButton1: UIButton!
    @IBOutlet weak var spreadButton1: UIButton!
    var dropState1 = 0
    
    @IBOutlet weak var homeTitles: UILabel!
    var titleNum = 1
    
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
    
    @IBAction func leftHomeButton(_ sender: Any) {
        if (titleNum == 1) {
            homeTitles.text = "Learn About Lebanon"
            titleNum = 3
        } else if (titleNum == 2) {
            homeTitles.text = "The Beirut Explosion"
            titleNum = 1
        } else if (titleNum == 3) {
            homeTitles.text = "Aftermath in Beirut"
            titleNum = 2
        }
    }
    @IBAction func rightHomeButton(_ sender: Any) {
        if (titleNum == 1) {
            homeTitles.text = "Aftermath in Beirut"
            titleNum = 2
        } else if (titleNum == 2) {
            homeTitles.text = "Learn About Lebanon"
            titleNum = 3
        } else if (titleNum == 3) {
            homeTitles.text = "The Beirut Explosion"
            titleNum = 1
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
