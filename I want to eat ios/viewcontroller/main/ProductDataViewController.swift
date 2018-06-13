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
        
        
        calorieLabel.text =  data.calorie?.description
        
        if(data.proteins != nil){
              calorieLabel.text = Double(round(100*data.proteins!)/100).description
        }else{
            proteinsLabel.text = "nil"
        }
        
        
        if(data.carbohydrates != nil){
            carbohydratesLabel.text = Double(round(100*data.carbohydrates!)/100).description
        }else{
            carbohydratesLabel.text = "nil"
        }
        
        if(data.fats != nil){
            fatsLabel.text = Double(round(100*data.fats!)/100).description
        }else{
            fatsLabel.text = "nil"
        }
        
        
    }
    
    
}




