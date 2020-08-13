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
    
    @IBOutlet var BeirutInfo: [UILabel]!
    @IBOutlet var AftermathInfo: [UILabel]!
    @IBOutlet var LebanonInfo: [UILabel]!
    @IBOutlet var BeirutPics: [UIImageView]!
    @IBOutlet var AftermathPics: [UIImageView]!
    
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
            
            for info in LebanonInfo {
                info.isHidden = false
            }
            for info in BeirutInfo {
                info.isHidden = true
            }
            for pic in BeirutPics {
                pic.isHidden = true
            }
            
        } else if (titleNum == 2) {
            homeTitles.text = "The Beirut Explosion"
            titleNum = 1
            
            for info in BeirutInfo {
                info.isHidden = false
            }
            for pic in BeirutPics {
                pic.isHidden = false
            }
            for info in AftermathInfo {
                info.isHidden = true
            }
            for pic in AftermathPics {
                pic.isHidden = true
            }
            
        } else if (titleNum == 3) {
            homeTitles.text = "Aftermath in Beirut"
            titleNum = 2
            
            for info in AftermathInfo {
                info.isHidden = false
            }
            for pic in AftermathPics {
                pic.isHidden = false
            }
            for info in LebanonInfo {
                info.isHidden = true
            }
        }
    }
    @IBAction func rightHomeButton(_ sender: Any) {
        if (titleNum == 1) {
            homeTitles.text = "Aftermath in Beirut"
            titleNum = 2
            
            for info in AftermathInfo {
                info.isHidden = false
            }
            for pic in AftermathPics {
                pic.isHidden = false
            }
            for info in BeirutInfo {
                info.isHidden = true
            }
            for pic in BeirutPics {
                pic.isHidden = true
            }
        } else if (titleNum == 2) {
            homeTitles.text = "Learn About Lebanon"
            titleNum = 3
            
            for info in LebanonInfo {
                info.isHidden = false
            }
            for info in AftermathInfo {
                info.isHidden = true
            }
            for pic in AftermathPics {
                pic.isHidden = true
            }
        } else if (titleNum == 3) {
            homeTitles.text = "The Beirut Explosion"
            titleNum = 1
            
            for info in BeirutInfo {
                info.isHidden = false
            }
            for pic in BeirutPics {
                pic.isHidden = false
            }
            for info in LebanonInfo {
                info.isHidden = true
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

}
