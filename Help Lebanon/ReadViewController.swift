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
    
    @IBOutlet var NewsInfo: [UIButton]!
    @IBOutlet var SocialInfo: [UIButton]!
    
    @IBOutlet weak var readTitles: UILabel!
    var titleNum2 = 1
    
    
    @IBAction func ourInstagramButton(_ sender: UIButton) {
        
              if let url = NSURL(string: "https://www.instagram.com/helplebanontoday/?hl=en") {         UIApplication.shared.open(url as URL)     }
    }
    
    @IBAction func tikTokHashtags(_ sender: UIButton) {
        
        
              if let url = NSURL(string: "https://vm.tiktok.com/ZMJMDs7G2/") {         UIApplication.shared.open(url as URL)     }
    }
    
    @IBAction func instagramHashtagsButton(_ sender: UIButton) {
        
        
              if let url = NSURL(string: "https://www.instagram.com/explore/tags/prayforlebanon/?hl=en") {         UIApplication.shared.open(url as URL)     }
    }
    
    @IBAction func ourTikTok(_ sender: UIButton) {
        
        
              if let url = NSURL(string: "https://vm.tiktok.com/ZMJMDTMdQ/") {         UIApplication.shared.open(url as URL)     }
    }
    
    
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
    
    @IBAction func rightButton2(_ sender: Any) {
        if (titleNum2 == 1) {
            readTitles.text = "Social Media"
            titleNum2 = 2
            
            for info in SocialInfo {
                info.isHidden = false
            }
            for info in NewsInfo {
                info.isHidden = true
            }
        } else if (titleNum2 == 2) {
            readTitles.text = "News Articles"
            titleNum2 = 1
            
            for info in NewsInfo {
                info.isHidden = false
            }
            for info in SocialInfo {
                info.isHidden = true
            }
        }
    }
    
    @IBAction func leftButton2(_ sender: Any) {
        if (titleNum2 == 1) {
            readTitles.text = "Social Media"
            titleNum2 = 3
            
            for info in SocialInfo {
                info.isHidden = false
            }
            for info in NewsInfo {
                info.isHidden = true
            }
        } else if (titleNum2 == 2) {
            readTitles.text = "News Articles"
            titleNum2 = 1
            
            for info in NewsInfo {
                info.isHidden = false
            }
            for info in SocialInfo {
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
