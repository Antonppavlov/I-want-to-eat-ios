//
//  SettingsViewController.swift
//  I want to eat ios
//
//  Created by Anton Pavlov on 16.05.2018.
//  Copyright © 2018 Anton Pavlov. All rights reserved.
//

import UIKit

class SettingsViewController: KeyboardCloseViewController, UIPickerViewDataSource,UIPickerViewDelegate {
    let storage = UserStorage()
    
    @IBOutlet weak var inputAge: UITextField!
    @IBOutlet weak var inputHeight: UITextField!
    @IBOutlet weak var inputWeight: UITextField!
    @IBOutlet weak var inputTargetWeight: UITextField!
    @IBOutlet weak var switchGender: UISegmentedControl!
    @IBOutlet weak var pickerActivity: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputAge.text = String(storage.fetchAge()!)
        inputHeight.text = String(storage.fetchHeight()!)
        inputWeight.text = String(storage.fetchWeight()!)
        pickerActivity.selectRow(Int(storage.fetchActivity()!)!, inComponent: 0, animated: true)
        inputTargetWeight.text = String(storage.fetchTargetWeight()!)
        
        switchGender.selectedSegmentIndex = Int(storage.fetchGender()!)!
    }
    
    
    @IBAction func saveSettings(_ sender: Any) {
        print("Save Age: " + inputAge.text!)
        print("Save Height: " + inputHeight.text!)
        print("Save Weight: " + inputWeight.text!)
        print("Save Activity: " + String(pickerActivity.selectedRow(inComponent: 0)))
        print("Save TargetWeight: " + inputTargetWeight.text!)
        print("Save Gender: " + String(switchGender.selectedSegmentIndex))
        
        
        storage.saveAge(age: inputAge.text!)
        storage.saveHeight(height: inputHeight.text!)
        storage.saveWeight(weight: inputWeight.text!)
        storage.saveActivity(activity: String(pickerActivity.selectedRow(inComponent: 0)))
        storage.saveTargetWeight(targetWeight: inputTargetWeight.text!)
        storage.saveGender(gender: String(switchGender.selectedSegmentIndex))
    }
    
    
    let activity = ["Минимальные нагрузки",
                    "Упражнения 1-3 раза в неделю",
                    "Тренировки 4-5 раз в неделю",
                    "Интенсивные тренировки 4-5 раз в неделю",
                    "Ежедневные тренировки",
                    "Тренировки 2 раза в день",
                    "Интенсивные тренировки 2 раза в день"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return activity[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return activity.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(activity[row])
        //  storage.saveActivity(activity: String(row))
    }
    
    
}





