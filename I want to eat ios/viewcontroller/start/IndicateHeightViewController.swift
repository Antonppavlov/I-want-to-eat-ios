//
//  IndicateHeightViewController.swift
//  I want to eat ios
//
//  Created by Anton Pavlov on 19.03.2018.
//  Copyright © 2018 Anton Pavlov. All rights reserved.
//

import UIKit

class IndicateHeightViewController: KeyboardCloseViewController {
    
    let storage = UserStorage()
    
    @IBOutlet weak var inputHeight: UITextField!
    @IBOutlet weak var buttonNext: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonNext.isEnabled = false
    }
    
    @IBAction func editingTextInput(_ sender: Any) {
        buttonNext.isEnabled = inputHeight.text != ""
    }
    
    @IBAction func clickButtonNext(_ sender: Any) {
        print(inputHeight.text!)
        storage.saveHeight(height: inputHeight.text!)
    }
}


