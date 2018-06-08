//
//  ChooseGenderViewController.swift
//  I want to eat ios
//
//  Created by Anton Pavlov on 19.03.2018.
//  Copyright © 2018 Anton Pavlov. All rights reserved.
//

import UIKit

class ChooseGenderViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func clickButtonMan(_ sender: Any) {
        UserStorage().saveGender(login: true)
    }
    @IBAction func clickButtonWoman(_ sender: Any) {
        UserStorage().saveGender(login: false)
    }
}
