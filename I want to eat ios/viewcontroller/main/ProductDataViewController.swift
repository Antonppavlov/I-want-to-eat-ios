//
//  ProductDataViewController.swift
//  I want to eat ios
//
//  Created by Anton Pavlov on 14.06.2018.
//  Copyright © 2018 Anton Pavlov. All rights reserved.
//

import UIKit

class ProductDataViewController: UIViewController {
    
    var foodProduct: FoodProduct?
    
    @IBOutlet weak var calorieLabel: UILabel!
    @IBOutlet weak var proteinsLabel: UILabel!
    @IBOutlet weak var carbohydratesLabel: UILabel!
    @IBOutlet weak var fatsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let data = foodProduct!.product.data
        
        calorieLabel.text =  data.calories.description
        proteinsLabel.text = data.proteins.description
        carbohydratesLabel.text = data.carbohydrates.description
        fatsLabel.text = data.fats.description
    }
    
    
}




