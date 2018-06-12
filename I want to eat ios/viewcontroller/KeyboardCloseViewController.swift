//
//  MyViewController.swift
//  I want to eat ios
//
//  Created by Anton Pavlov on 12.06.2018.
//  Copyright © 2018 Anton Pavlov. All rights reserved.
//

import UIKit

class KeyboardCloseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if touches.first != nil{
            view.endEditing(true)
        }
        super.touchesBegan(touches, with: event)
    }
    


}
