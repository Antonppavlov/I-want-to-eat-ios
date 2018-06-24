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
        return (getProductNameAndValue().count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .value1, reuseIdentifier: nil)
        
        cell.textLabel?.text = getProductNameAndValue()[indexPath.row].name?.lowercased()
        cell.detailTextLabel?.text = getProductNameAndValue()[indexPath.row].value?.description
        
        return cell
    }
    
    
    func getProductNameAndValue() ->  [ProductNameAndValue] {
        
        var productList = [ProductNameAndValue]()
        
        let foodIntakeList = MenuStorage.SharedInstance().fetchMenuForTheDay()?.foodIntakeList
        
        for foodIntake in foodIntakeList! {
            let foods = foodIntake.foods
            
            for food in foods {
                
                let products = food.foodProducts
                
                for product in products{
                    let productNameAndValue = ProductNameAndValue()
                    
                    productNameAndValue.name = product.product.name.nameRu
                    productNameAndValue.value = product.value
                    
                    let contains =  productList.contains(where: { (elementInList) -> Bool in
                        
                        if(elementInList == productNameAndValue){
                            elementInList.value = elementInList.value! + productNameAndValue.value!
                            return true;
                        }else{
                            return false;
                        }
                        
                    })
                    
                    if(!contains){
                        productList.append(productNameAndValue)
                    }
                    
                    
                }
                
            }
        }
        return productList.sorted(by: { (product1, product2) -> Bool in
            product1.value! > product2.value!
        })
    }
}

class ProductNameAndValue : Equatable{
    static func == (lhs: ProductNameAndValue, rhs: ProductNameAndValue) -> Bool {
        return lhs.name == rhs.name
    }
    public var name:String? = nil
    public var value:Int? = nil
}













