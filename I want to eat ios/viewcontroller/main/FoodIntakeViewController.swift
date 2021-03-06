//
//  FoodIntakeViewController.swift
//  I want to eat ios
//
//  Created by Anton Pavlov on 13.06.2018.
//  Copyright © 2018 Anton Pavlov. All rights reserved.
//

import UIKit

class FoodIntakeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var foodTableView: UITableView!
    var foodIntake:FoodIntakeList?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.foodTableView.reloadData()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.foodIntake!.foods.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text =  foodIntake!.foods[indexPath.row].name.nameRu
        cell.detailTextLabel?.text = foodIntake!.cpfc.calories.description
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showFood", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? FoodViewController{
            destination.foodInDb = foodIntake!.foods[(foodTableView.indexPathForSelectedRow?.row)!]
        }
    }
}

