//
//  ProductBasketViewController.swift
//  I want to eat ios
//
//  Created by Anton Pavlov on 21/06/2018.
//  Copyright © 2018 Anton Pavlov. All rights reserved.
//

import UIKit

class ProductBasketViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var broductTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.broductTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (getFoodProduct().count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .value1, reuseIdentifier: nil)
        
        cell.textLabel?.text = getFoodProduct()[indexPath.row].product.name.nameRu.description.lowercased()
        cell.detailTextLabel?.text = getFoodProduct()[indexPath.row].value.description
        
        return cell
    }
    
    func getFoodProduct() ->  [FoodProduct] {
        var productList = [FoodProduct]()
        
        let foodIntakeList = MenuStorage.SharedInstance().fetchMenuForTheDay()?.foodIntakeList
        
        for foodIntake in foodIntakeList! {
            let foods = foodIntake.foods
            
            for food in foods {
                
                let products = food.foodProducts
                
                for product in products{
                    productList.append(product)
                    
                }
                
            }
        }
        return productList
    }
    
}

class ProductNameAndValue {
    public var name:String? = nil
    public var value:Int? = nil
    
}









