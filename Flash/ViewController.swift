//
//  ViewController.swift
//  Flash
//
//  Created by Jinsoo Choi on 25/12/2018.
//  Copyright © 2018 Jinsoo Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var switchButton: UIButton!
    @IBOutlet weak var flashImageView: UIImageView!
    
    var isOn = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func switchTapped(_ sender: Any) {
        isOn = !isOn
        
//        if isOn == true {
//            switchButton.setImage(#imageLiteral(resourceName: "onSwitch"), for: .normal)
//            flashImageView.image = #imageLiteral(resourceName: "onBG")
//        } else {
//            switchButton.setImage(#imageLiteral(resourceName: "offSwitch"), for: .normal)
//            flashImageView.image = #imageLiteral(resourceName: "offBG")
//        }
        
        flashImageView.image = isOn ? #imageLiteral(resourceName: "onBG") : #imageLiteral(resourceName: "offBG")
        switchButton.setImage(isOn ? #imageLiteral(resourceName: "onSwitch") : #imageLiteral(resourceName: "offSwitch"), for: .normal)
    }
}

