//
//  ActivityViewController.swift
//  I want to eat ios
//
//  Created by Anton Pavlov on 12.06.2018.
//  Copyright © 2018 Anton Pavlov. All rights reserved.
//

import UIKit

class ActivityViewController: UIViewController, UIPickerViewDataSource,UIPickerViewDelegate {
    
    @IBOutlet weak var pickerActivity: UIPickerView!
    
    let activity = ["Минимальные нагрузки",
                    "Упражнения 1-3 раза в неделю",
                    "Тренировки 4-5 раз в неделю",
                    "Интенсивные тренировки 4-5 раз в неделю",
                    "Ежедневные тренировки",
                    "Тренировки 2 раза в день",
                    "Интенсивные тренировки 2 раза в день"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
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
        UserStorage().saveActivity(activity: String(row))
    }
}



