//
//  FoodViewController.swift
//  I want to eat ios
//
//  Created by Anton Pavlov on 13.06.2018.
//  Copyright © 2018 Anton Pavlov. All rights reserved.
//

import UIKit

class FoodViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var subTypeLabel: UILabel!
    @IBOutlet weak var recipeTextView: UITextView!
    @IBOutlet weak var foodTableView: UITableView!
    
    var foodInDb:Food?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = foodInDb?.name.nameRu
        subTypeLabel.text =  foodInDb?.foodSubType.nameRu
        typeLabel.text =  foodInDb?.foodType.nameRu
        recipeTextView.text =  foodInDb?.recipe.descriptionRu
        
        
        self.foodTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.foodInDb!.foodProducts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .value1, reuseIdentifier: nil)
        let product = foodInDb!.foodProducts[indexPath.row]
        
        cell.textLabel?.text = product.product.name.nameRu.lowercased()
        
        if(product.value != nil){
            cell.detailTextLabel?.text = Double(round(100*product.value!)/100).description
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showProductData", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ProductDataViewController{
            destination.foodProduct = foodInDb?.foodProducts[(foodTableView.indexPathForSelectedRow?.row)!]
        }
    }
}






