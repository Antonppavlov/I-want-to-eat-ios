//
//  SettingsViewController.swift
//  I want to eat ios
//
//  Created by Anton Pavlov on 16.05.2018.
//  Copyright © 2018 Anton Pavlov. All rights reserved.
//

import UIKit

class SettingsViewController: KeyboardCloseViewController {
    let storage = UserStorage()
    
    @IBOutlet weak var inputAge: UITextField!
    @IBOutlet weak var inputHeight: UITextField!
    @IBOutlet weak var inputWeight: UITextField!
    @IBOutlet weak var inputActivity: UITextField!
    @IBOutlet weak var inputTargetWeight: UITextField!
    @IBOutlet weak var switchGender: UISegmentedControl!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputAge.text = String(storage.fetchAge()!)
        inputHeight.text = String(storage.fetchHeight()!)
        inputWeight.text = String(storage.fetchWeight()!)
        inputActivity.text = String(storage.fetchActivity()!)
        inputTargetWeight.text = String(storage.fetchTargetWeight()!)
        
        switchGender.selectedSegmentIndex = Int(storage.fetchGender()!)!
    }
    
    
    @IBAction func saveSettings(_ sender: Any) {
        print(inputAge.text!)
        print(inputHeight.text!)
        print(inputWeight.text!)
        print(inputActivity.text!)
        print(inputTargetWeight.text!)
        print(switchGender.selectedSegmentIndex)
        
        
        
        storage.saveAge(age: inputAge.text!)
        storage.saveHeight(height: inputHeight.text!)
        storage.saveWeight(weight: inputWeight.text!)
        storage.saveActivity(activity: inputActivity.text!)
        storage.saveTargetWeight(targetWeight: inputTargetWeight.text!)
        
        storage.saveGender(gender: String(switchGender.selectedSegmentIndex))
    }
    
}




