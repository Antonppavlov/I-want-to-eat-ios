//
//  ChooseGenderViewController.swift
//  I want to eat ios
//
//  Created by Anton Pavlov on 19.03.2018.
//  Copyright © 2018 Anton Pavlov. All rights reserved.
//

import UIKit

class ChooseGenderViewController: UIViewController {
    
    let storage = UserStorage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func clickButtonMan(_ sender: Any) {
        storage.saveGender(gender: "1")
    }
    @IBAction func clickButtonWoman(_ sender: Any) {
        storage.saveGender(gender: "0")
    }
}



